import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/profile/user/user.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';
import 'package:staugustinechsnewapp/providers/image_upload/image_upload_repository.dart';
import 'package:staugustinechsnewapp/providers/profile/profile_repository.dart';
part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@Injectable()
@singleton
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial()) {
    on<ProfileEvent>((event, emit) => event.map(
        getUser: (e) async {
          Either<Failure, User> res = await ProfileRepository.getUser(
              id: e.id, email: e.email, name: e.name);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(user: r)));
        },
        uploadImageFile: (e) async {
          Either<Failure, Success> res =
              await ImageUploadRepository.uploadImageFile(
                  picture: e.picture, path: e.path, fileName: e.fileName);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(success: r)));
        },
        addClub: (e) async {
          Either<Failure, Success> res = await ProfileRepository.addClub(
              name: e.name,
              description: e.description,
              email: e.email,
              pictureId: e.pictureId,
              joinPreference: e.joinPreference);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(success: r)));
        },
        resetFailSuccess: (e) =>
            emit(state.copyWith(failure: null, success: null))));
  }
}
