import 'package:staugustinechsnewapp/providers/network.dart';

String addSongEndpoint = getCloudFunctionsDomain() + '/addSong';
String getSongsEndpoint = getCloudFunctionsDomain() + '/getSongs';
String upvoteSongEndpoint = getCloudFunctionsDomain() + '/upvoteSong';
const errorAddingSong = 'Error adding song';
const errorGettingSongs = 'Error getting songs';
const errorUpvotingSong = 'Error upvoting song';
