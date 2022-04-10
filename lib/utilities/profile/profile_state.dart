part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    User? user,
    Failure? failure,
    Success? success,
  }) = _ProfileState;
  factory ProfileState.initial() => const ProfileState();
}
