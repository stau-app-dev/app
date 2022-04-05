part of 'cafe_menu_bloc.dart';

@freezed
class CafeMenuEvent with _$CafeMenuEvent {
  const factory CafeMenuEvent.getCafeMenu() = _getCafeMenu;
  const factory CafeMenuEvent.getTodaysSpecials() = _getTodaysSpecials;
  const factory CafeMenuEvent.resetCafeMenu() = _resetCafeMenu;
  const factory CafeMenuEvent.resetFailSuccess() = _resetFailSuccess;
}
