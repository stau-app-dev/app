import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/announcements/club_announcement/club_announcement.dart';
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
          emit(state.copyWith(clubQuickAccessItems: []));
          Either<Failure, List<ClubQuickAccessItem>> res =
              await SocialsRepository.getUserClubs(userId: e.userId);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(clubQuickAccessItems: r)));
        },
        getUserClubsNotJoined: (e) async {
          emit(state.copyWith(clubQuickAccessItems: []));
          Either<Failure, List<ClubQuickAccessItem>> res =
              await SocialsRepository.getUserClubsNotJoined(userId: e.userId);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(clubQuickAccessItems: r)));
        },
        getClub: (e) async {
          Either<Failure, Club> res = await SocialsRepository.getClub(
              clubId: e.clubId, pictureUrl: e.pictureUrl);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(club: r)));
        },
        addClub: (e) async {
          await ImageUploadRepository.uploadImageFile(
              picture: e.picture, path: e.path, fileName: e.fileName);
          Either<Failure, Success> res = await SocialsRepository.addClub(
              name: e.name,
              description: e.description,
              email: e.email,
              pictureId: e.pictureId,
              joinPreference: e.joinPreference);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(success: r, club: null)));
        },
        updateClub: (e) async {
          if (e.picture != null && e.path != null && e.fileName != null) {
            await ImageUploadRepository.uploadImageFile(
                picture: e.picture!, path: e.path!, fileName: e.fileName!);
          }
          Either<Failure, Success> res = await SocialsRepository.updateClub(
              clubId: e.clubId,
              name: e.name,
              description: e.description,
              pictureId: e.pictureId,
              joinPreference: e.joinPreference);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(success: r, club: null)));
        },
        addClubAnnouncement: (e) async {
          Either<Failure, Success> res =
              await SocialsRepository.addClubAnnouncement(
                  clubId: e.clubId,
                  clubName: e.clubName,
                  content: e.content,
                  creatorName: e.creatorName);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(success: r)));
        },
        deleteClubAnnouncement: (e) async {
          Either<Failure, Success> res =
              await SocialsRepository.deleteClubAnnouncement(id: e.id);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(success: r)));
        },
        getClubAnnouncements: (e) async {
          Either<Failure, List<ClubAnnouncement>> res =
              await SocialsRepository.getClubAnnouncements(clubId: e.clubId);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(clubAnnouncements: r)));
        },
        addUserToClub: (e) async {
          Either<Failure, Success> res = await SocialsRepository.addUserToClub(
              clubId: e.clubId, userEmail: e.userEmail);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(success: r)));
        },
        addUserToPendingClub: (e) async {
          Either<Failure, Success> res =
              await SocialsRepository.addUserToPendingClub(
                  clubId: e.clubId, userEmail: e.userEmail);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(success: r)));
        },
        removeUserFromClub: (e) async {
          Either<Failure, Success> res =
              await SocialsRepository.removeUserFromClub(
                  clubId: e.clubId, userEmail: e.userEmail);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(success: r)));
        },
        promoteUserToAdmin: (e) async {
          Either<Failure, Success> res =
              await SocialsRepository.promoteUserToAdmin(
                  clubId: e.clubId, userEmail: e.userEmail);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(success: r)));
        },
        resetClub: (e) => emit(state.copyWith(club: null)),
        resetFailSuccess: (e) =>
            emit(state.copyWith(failure: null, success: null))));
  }
}
