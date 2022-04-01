import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/songs/song/song.dart';
part 'song_event.dart';
part 'song_state.dart';
part 'song_bloc.freezed.dart';

@Injectable()
@singleton
class SongBloc extends Bloc<SongEvent, SongState> {
  SongBloc() : super(SongState.initial()) {
    on<SongEvent>(
      (event, emit) =>
          event.map(getSongs: (e) => emit(state), addSong: (e) => emit(state)),
    );
  }
}
