part of 'song_bloc.dart';

@freezed
class SongState with _$SongState {
  const factory SongState({
    @Default([]) List<Song> songs,
  }) = _SongState;
  factory SongState.initial() => const SongState();
}
