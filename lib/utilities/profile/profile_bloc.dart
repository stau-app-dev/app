import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/profile/user/user.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';
import 'package:staugustinechsnewapp/providers/notifications/push_notifications_repository.dart';
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
        refreshUser: (e) async {
          String id = state.user!.id;
          String email = state.user!.email;
          String name = state.user!.name;
          Either<Failure, User> res =
              await ProfileRepository.getUser(id: id, email: email, name: name);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(user: r)));
        },
        updateUserField: (e) async {
          Either<Failure, User> res = await ProfileRepository.updateUserField(
              id: state.user!.id, field: e.field, value: e.value);
          return emit(res.fold(
              (l) => state.copyWith(failure: l),
              (r) => state.copyWith(
                  user: r,
                  success:
                      const Success(message: 'Updated user successfully'))));
        },
        getFcmToken: (e) async {
          Either<Failure, String> res =
              await PushNotificationServiceRepository.getToken();
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(fcmToken: r)));
        },
        resetFailSuccess: (e) =>
            emit(state.copyWith(failure: null, success: null))));
  }
}
