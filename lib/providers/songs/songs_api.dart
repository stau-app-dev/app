import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/models/shared/failure/failure.dart';
import 'package:staugustinechsnewapp/models/shared/success/success.dart';
import 'package:staugustinechsnewapp/models/songs/song/song.dart';
import 'package:staugustinechsnewapp/providers/songs/consts.dart';
import 'package:staugustinechsnewapp/providers/auth_client.dart';

@Injectable()
class SongsApi {
  static Future<Either<Failure, List<Song>>> getSongs() async {
    try {
      Response res = await authClient.get(Uri.parse(getSongsEndpoint));
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
      Response res = await authClient.post(Uri.parse(addSongEndpoint),
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

  static Future<Either<Failure, Success>> deleteSong(
      {required String id}) async {
    try {
      Response res = await authClient.post(
        Uri.parse(deleteSongEndpoint),
        body: json.encode({
          'id': id,
        }),
      );
      if (res.statusCode == 200) {
        String message = json.decode(res.body)['data']['message'] as String;
        return Right(Success(message: message));
      } else {
        return const Left(Failure(message: errorDeletingSong));
      }
    } catch (e) {
      return const Left(Failure(message: errorDeletingSong));
    }
  }

  static Future<Either<Failure, Success>> upvoteSong(
      {required String songId, required int upvotes}) async {
    try {
      var uri = Uri.parse(upvoteSongEndpoint);
      uri = uri.replace(queryParameters: {
        'songId': songId,
        'upvotes': upvotes.toString(),
      });
      Response res = await authClient.post(uri);
      if (res.statusCode == 200) {
        String message = json.decode(res.body)['data']['message'] as String;
        return Right(Success(message: message));
      } else {
        return const Left(Failure(message: errorUpvotingSong));
      }
    } catch (e) {
      return const Left(Failure(message: errorUpvotingSong));
    }
  }
}
