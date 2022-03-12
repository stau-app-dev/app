part of 'nav_bloc.dart';

@freezed
abstract class NavState with _$NavState {
  const factory NavState({
    @Default(ENav.home) ENav currentScreen,
    @Default(true) bool navbarVisible,
  }) = _NavState;
  factory NavState.initial() => const NavState();
}
