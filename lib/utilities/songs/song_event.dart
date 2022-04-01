part of 'song_bloc.dart';

@freezed
class SongEvent with _$SongEvent {
  const factory SongEvent.getSongs() = _getSongs;
  const factory SongEvent.addSong(
      {required String creatorEmail,
      required String artist,
      required String name}) = _addSong;
}
