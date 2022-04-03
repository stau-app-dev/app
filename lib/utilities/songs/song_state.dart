part of 'song_bloc.dart';

@freezed
class SongState with _$SongState {
  const factory SongState({
    @Default([]) List<Song> songs,
    Failure? failure,
    Success? success,
  }) = _SongState;
  factory SongState.initial() => const SongState();
}
