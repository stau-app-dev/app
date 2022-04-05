import 'package:staugustinechsnewapp/providers/network.dart';

String addSongEndpoint = getCloudFunctionsDomain() + '/addSong';
String getSongsEndpoint = getCloudFunctionsDomain() + '/getSongs';
const errorAddingSong = 'Error adding song';
const errorGettingSongs = 'Error getting songs';
