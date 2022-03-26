import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/announcements/general_announcement/general_announcement.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';
import 'package:staugustinechsnewapp/providers/announcements/announcements_repository.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@Injectable()
@singleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<HomeEvent>(
        (event, emit) => event.map(getGeneralAnnouncements: (e) async {
              Either<Failure, List<GeneralAnnouncement>> res =
                  await AnnouncementsRepository.getGeneralAnnouncements();
              return emit(res.fold((l) => state.copyWith(failure: l),
                  (r) => state.copyWith(generalAnnouncements: r)));
            }, resetFailSuccess: (e) {
              return emit(state.copyWith(failure: null, success: null));
            }));
  }
}
