part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    Failure? failure,
    Success? success,
    @Default([]) List<GeneralAnnouncement> generalAnnouncements,
  }) = _HomeState;
  factory HomeState.initial() => const HomeState();
}
