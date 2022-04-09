import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'nav_event.dart';
part 'nav_state.dart';
part 'nav_bloc.freezed.dart';

// Possible screens
enum ENav {
  cafeMenu,
  home,
  login,
  joinClubs,
  profile,
  settings,
  socials,
  songRequests,
}

@Injectable()
@singleton
class NavBloc extends Bloc<NavEvent, NavState> {
  NavBloc() : super(NavState.initial()) {
    on<NavEvent>((event, emit) => event.map(
        changeScreen: (e) => emit(state.copyWith(currentScreen: e.screen)),
        setNavbarVisible: (e) =>
            emit(state.copyWith(navbarVisible: e.isVisible))));
  }
}
