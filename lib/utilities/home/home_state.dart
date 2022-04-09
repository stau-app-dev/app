part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    Failure? failure,
    Success? success,
    int? dayNumber,
    List<GeneralAnnouncement>? generalAnnouncements,
    List<CafeMenuItem>? featuredCafeMenuItems,
    SpiritMeters? spiritMeters,
    VerseOfDay? verseOfDay,
  }) = _HomeState;
  factory HomeState.initial() => const HomeState();
}
