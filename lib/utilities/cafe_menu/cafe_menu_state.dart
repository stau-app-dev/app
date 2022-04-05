part of 'cafe_menu_bloc.dart';

@freezed
class CafeMenuState with _$CafeMenuState {
  const factory CafeMenuState({
    @Default([]) List<CafeMenuItem> todaysSpecials,
    @Default([]) List<CafeMenuItem> menuItems,
    Failure? failure,
    Success? success,
  }) = _CafeMenuState;
  factory CafeMenuState.initial() => const CafeMenuState();
}
