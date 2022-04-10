import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/announcements/general_announcement/announcement.dart';
import 'package:staugustinechsnewapp/models/cafe_menu/cafe_menu_item/cafe_menu_item.dart';
import 'package:staugustinechsnewapp/models/home/spirit_meters/spirit_meters.dart';
import 'package:staugustinechsnewapp/models/home/verse_of_day/verse_of_day.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';
import 'package:staugustinechsnewapp/providers/announcements/announcements_repository.dart';
import 'package:staugustinechsnewapp/providers/cafe_menu/cafe_menu_repository.dart';
import 'package:staugustinechsnewapp/providers/home/home_repository.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@Injectable()
@singleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) => event.map(
        getDayNumber: (e) async {
          Either<Failure, int?> res = await HomeRepository.getDayNumber();
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(dayNumber: r)));
        },
        getGeneralAnnouncements: (e) async {
          Either<Failure, List<Announcement>> res =
              await AnnouncementsRepository.getGeneralAnnouncements();
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(generalAnnouncements: r)));
        },
        getFeaturedCafeMenuItems: (e) async {
          Either<Failure, List<CafeMenuItem>> res =
              await CafeMenuRepository.getCafeMenu(
                  isTodaysSpecial: true, limit: 3);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(featuredCafeMenuItems: r)));
        },
        getSpiritMeters: (e) async {
          Either<Failure, SpiritMeters> res =
              await HomeRepository.getSpiritMeters();
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(spiritMeters: r)));
        },
        getVerseOfDay: (e) async {
          Either<Failure, VerseOfDay> res =
              await HomeRepository.getVerseOfDay();
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(verseOfDay: r)));
        },
        resetFailSuccess: (e) =>
            emit(state.copyWith(failure: null, success: null))));
  }
}
