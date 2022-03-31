import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/routes/router.dart';
part 'nav_event.dart';
part 'nav_state.dart';
part 'nav_bloc.freezed.dart';

@Injectable()
@singleton
class NavBloc extends Bloc<NavEvent, NavState> {
  NavBloc() : super(NavState.initial()) {
    on<NavEvent>((event, emit) => event.map(
        changeScreen: (e) {
          GoRouter.of(e.context).go(getRouteFromENav(e.screen));
          return emit(state);
        },
        setNavbarVisible: (e) =>
            emit(state.copyWith(navbarVisible: e.isVisible))));
  }
}
