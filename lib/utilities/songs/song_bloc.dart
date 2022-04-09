import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';
import 'package:staugustinechsnewapp/models/songs/song/song.dart';
import 'package:staugustinechsnewapp/providers/songs/songs_repository.dart';
part 'song_event.dart';
part 'song_state.dart';
part 'song_bloc.freezed.dart';

@Injectable()
@singleton
class SongBloc extends Bloc<SongEvent, SongState> {
  SongBloc() : super(SongState.initial()) {
    on<SongEvent>((event, emit) => event.map(
        getSongs: (e) async {
          Either<Failure, List<Song>> res = await SongsRepository.getSongs();
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(songs: r, lastUpdated: DateTime.now())));
        },
        addSong: (e) async {
          Either<Failure, Success> res = await SongsRepository.addSong(
              creatorEmail: e.creatorEmail, artist: e.artist, name: e.name);
          return emit(res.fold((l) => state.copyWith(failure: l),
              (r) => state.copyWith(success: r)));
        },
        upvoteSong: (e) async {
          emit(state.copyWith(isLoading: true));
          Either<Failure, Success> res = await SongsRepository.upvoteSong(
              songId: e.id, upvotes: e.upvotes);
          return emit(res.fold(
              (l) => state.copyWith(failure: l, isLoading: false),
              (r) => state.copyWith(success: r, isLoading: false)));
        },
        setUpvoted: (e) {
          Map<String, dynamic> upvotedMap = e.upvoted;

          // Create a new map with the current state
          List<Map<String, dynamic>> newSongs = [];
          for (int i = 0; i < state.songs.length; i++) {
            newSongs.add(Song.toJson(state.songs[i]));
          }

          // Iterate through saved upvotes in local storage and update state
          for (Song song in state.songs) {
            if (upvotedMap.containsKey(song.id)) {
              int index =
                  newSongs.indexWhere((element) => element['id'] == song.id);
              newSongs[index]['upvoted'] = upvotedMap[song.id];
            }
          }

          // Convert back to list of songs
          List<Song> newSongsList = [];
          for (Map<String, dynamic> song in newSongs) {
            newSongsList.add(Song.fromJson(song));
          }

          return emit(state.copyWith(songs: newSongsList));
        },
        resetSongs: (e) => emit(state.copyWith(songs: [])),
        resetFailSuccess: (e) =>
            emit(state.copyWith(failure: null, success: null))));
  }
}
