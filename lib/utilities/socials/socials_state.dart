part of 'socials_bloc.dart';

@freezed
class SocialsState with _$SocialsState {
  const factory SocialsState({
    List<ClubQuickAccessItem>? clubQuickAccessItems,
    Club? club,
    List<ClubAnnouncement>? clubAnnouncements,
    String? addedClubId,
    Failure? failure,
    Success? success,
  }) = _SocialsState;
  factory SocialsState.initial() => const SocialsState();
}
