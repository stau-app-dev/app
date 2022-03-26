part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getGeneralAnnouncements() = _getGeneralAnnouncements;
  const factory HomeEvent.resetFailSuccess() = _resetFailSuccess;
}
