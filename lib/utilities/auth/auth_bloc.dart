import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';
import 'package:staugustinechsnewapp/providers/auth/auth_repository.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@Injectable()
@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<AuthEvent>((event, emit) => event.map(initializeFirebase: (e) async {
          Either<Failure, FirebaseApp> res =
              await AuthRepository.initializeFirebase();
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(firebaseApp: r)));
        }, checkSignedIn: (e) async {
          Either<Failure, User?> res = await AuthRepository.checkSignedIn();
          return emit(res.fold((l) => state.copyWith(failure: l), (r) {
            if (r != null) {
              return state.copyWith(user: r, isAuthenticated: true);
            } else {
              return state.copyWith(user: null);
            }
          }));
        }, signIn: (e) async {
          Either<Failure, User?> res = await AuthRepository.signInWithGoogle();
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(user: r, isAuthenticated: true)));
        }, signOut: (e) async {
          Either<Failure, Success> res = await AuthRepository.signOut();
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(user: null, isAuthenticated: false)));
        }, resetFailSuccess: (e) {
          return emit(state.copyWith(failure: null, success: null));
        }));
  }
}
