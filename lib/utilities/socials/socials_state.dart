part of 'socials_bloc.dart';

@freezed
class SocialsState with _$SocialsState {
  const factory SocialsState({
    List<Club>? clubs,
    String? addedClubId,
    Failure? failure,
    Success? success,
  }) = _SocialsState;
  factory SocialsState.initial() => const SocialsState();
}
