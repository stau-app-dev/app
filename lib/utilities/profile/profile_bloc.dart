import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/profile/user/user.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';
import 'package:staugustinechsnewapp/providers/profile/profile_repository.dart';
part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@Injectable()
@singleton
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial()) {
    on<ProfileEvent>((event, emit) => event.map(
        getUser: (e) async {
          Either<Failure, User> res = await ProfileRepository.getUser(
              id: e.id, email: e.email, name: e.name);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(user: r)));
        },
        resetFailSuccess: (e) =>
            emit(state.copyWith(failure: null, success: null))));
  }
}
