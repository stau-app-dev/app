import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';
import 'package:staugustinechsnewapp/models/socials/club/club.dart';
import 'package:staugustinechsnewapp/models/socials/club_quick_access_item/club_quick_access_item.dart';
import 'package:staugustinechsnewapp/providers/image_upload/image_upload_repository.dart';
import 'package:staugustinechsnewapp/providers/socials/socials_repository.dart';
part 'socials_event.dart';
part 'socials_state.dart';
part 'socials_bloc.freezed.dart';

@Injectable()
@singleton
class SocialsBloc extends Bloc<SocialsEvent, SocialsState> {
  SocialsBloc() : super(SocialsState.initial()) {
    on<SocialsEvent>((event, emit) => event.map(
        getUserClubs: (e) async {
          Either<Failure, List<ClubQuickAccessItem>> res =
              await SocialsRepository.getUserClubs(userId: e.userId);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(clubQuickAccessItems: r)));
        },
        addClub: (e) async {
          await ImageUploadRepository.uploadImageFile(
              picture: e.picture, path: e.path, fileName: e.fileName);
          Either<Failure, Club> res = await SocialsRepository.addClub(
              name: e.name,
              description: e.description,
              email: e.email,
              pictureId: e.pictureId,
              joinPreference: e.joinPreference);
          return emit(res.fold(
              (l) => state.copyWith(failure: l),
              (r) => state.copyWith(
                  success: const Success(message: 'Successfully added club'),
                  addedClubId: r.id)));
        },
        resetAddedClubId: (e) => emit(state.copyWith(addedClubId: null)),
        resetFailSuccess: (e) =>
            emit(state.copyWith(failure: null, success: null))));
  }
}
