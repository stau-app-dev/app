import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/cafe_menu/cafe_menu_item/cafe_menu_item.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';
import 'package:staugustinechsnewapp/providers/cafe_menu/cafe_menu_repository.dart';
part 'cafe_menu_event.dart';
part 'cafe_menu_state.dart';
part 'cafe_menu_bloc.freezed.dart';

@Injectable()
@singleton
class CafeMenuBloc extends Bloc<CafeMenuEvent, CafeMenuState> {
  CafeMenuBloc() : super(CafeMenuState.initial()) {
    on<CafeMenuEvent>((event, emit) => event.map(getCafeMenu: (e) async {
          Either<Failure, List<CafeMenuItem>> res =
              await CafeMenuRepository.getCafeMenu(isTodaySpecial: false);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(menuItems: r)));
        }, getTodaysSpecials: (e) async {
          Either<Failure, List<CafeMenuItem>> res =
              await CafeMenuRepository.getCafeMenu(isTodaySpecial: true);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(todaysSpecials: r)));
        }, resetCafeMenu: (e) async {
          return emit(state.copyWith(menuItems: [], todaysSpecials: []));
        }, resetFailSuccess: (e) async {
          return emit(state.copyWith(failure: null, success: null));
        }));
  }
}
