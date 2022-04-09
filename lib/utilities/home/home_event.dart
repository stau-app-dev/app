part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getDayNumber() = _getDayNumber;
  const factory HomeEvent.getGeneralAnnouncements() = _getGeneralAnnouncements;
  const factory HomeEvent.getFeaturedCafeMenuItems() =
      _getFeaturedCafeMenuItems;
  const factory HomeEvent.getSpiritMeters() = _getSpiritMeters;
  const factory HomeEvent.getVerseOfDay() = _getVerseOfDay;
  const factory HomeEvent.resetFailSuccess() = _resetFailSuccess;
}
