part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getDayNumber() = _getDayNumber;
  const factory HomeEvent.getGeneralAnnouncements() = _getGeneralAnnouncements;
  const factory HomeEvent.resetFailSuccess() = _resetFailSuccess;
  const factory HomeEvent.getSpiritMeters() = _getSpiritMeters;
  const factory HomeEvent.getVerseOfDay() = _getVerseOfDay;
}
