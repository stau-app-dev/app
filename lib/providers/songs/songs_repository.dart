import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';
import 'package:staugustinechsnewapp/models/songs/song/song.dart';
import 'package:staugustinechsnewapp/providers/songs/songs_api.dart';

@lazySingleton
class SongsRepository {
  SongsRepository();

  static Future<Either<Failure, List<Song>>> getSongs() async {
    return await SongsApi.getSongs();
  }

  static Future<Either<Failure, Success>> addSong(
      {required String creatorEmail,
      required String artist,
      required String name}) async {
    return await SongsApi.addSong(
        creatorEmail: creatorEmail, artist: artist, name: name);
  }
}
