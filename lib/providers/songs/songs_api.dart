import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';
import 'package:staugustinechsnewapp/models/songs/song/song.dart';
import 'package:staugustinechsnewapp/providers/songs/consts.dart';

@Injectable()
class SongsApi {
  static Future<Either<Failure, List<Song>>> getSongs() async {
    try {
      Response res = await get(Uri.parse(getSongsEndpoint));
      if (res.statusCode == 200) {
        List<dynamic> data = json.decode(res.body)['data'];
        List<Song> songs = [];
        for (var i = 0; i < data.length; i++) {
          songs.add(Song.fromJson(data[i]));
        }
        return Right(songs);
      } else {
        return const Left(Failure(message: errorGettingSongs));
      }
    } catch (e) {
      return const Left(Failure(message: errorGettingSongs));
    }
  }

  static Future<Either<Failure, Success>> addSong(
      {required String artist,
      required String creatorEmail,
      required String name}) async {
    try {
      Response res = await post(Uri.parse(addSongEndpoint),
          body: json.encode({
            'artist': artist,
            'creatorEmail': creatorEmail,
            'name': name,
          }));
      if (res.statusCode == 200) {
        String message = json.decode(res.body)['data']['message'] as String;
        return Right(Success(message: message));
      } else {
        return const Left(Failure(message: errorAddingSong));
      }
    } catch (e) {
      return const Left(Failure(message: errorAddingSong));
    }
  }
}