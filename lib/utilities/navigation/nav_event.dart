part of 'nav_bloc.dart';

@freezed
class NavEvent with _$NavEvent {
  const factory NavEvent.changeScreen({required ENav screen}) = _changeScreen;
  const factory NavEvent.setNavbarVisible({required bool isVisible}) =
      _setNavbarVisible;
}
