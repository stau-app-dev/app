import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/songs/song/song.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/screen_header.dart';
import 'package:staugustinechsnewapp/widgets/song_requests/song_requests.dart';

class SongRequestsScreen extends StatelessWidget {
  final List<Song> songs;
  final Function() onPressedAddSong;
  final Function(bool upvoted, String id) onPressedUpvote;
  final Function() onRefresh;
  final bool disableUpvote;

  const SongRequestsScreen(
      {Key? key,
      required this.songs,
      required this.onPressedAddSong,
      required this.onPressedUpvote,
      required this.onRefresh,
      required this.disableUpvote})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      onRefresh: onRefresh,
      listView: true,
      children: [
        const ScreenHeader(headerText: 'Song Requests'),
        const SizedBox(height: Styles.mainSpacing),
        SongRequests(
          songs: songs,
          onPressedAddSong: onPressedAddSong,
          onPressedUpvote: onPressedUpvote,
          disableUpvote: disableUpvote,
        ),
      ],
    );
  }
}
