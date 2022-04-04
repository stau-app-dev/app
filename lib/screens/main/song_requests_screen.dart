import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/songs/song/song.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/screen_header.dart';
import 'package:staugustinechsnewapp/widgets/song_requests/song_requests.dart';

class SongRequestsScreen extends StatefulWidget {
  final List<Song> songs;
  final Function() onAddSong;
  final Function(bool upvoted, String songName) onUpvote;

  const SongRequestsScreen(
      {Key? key,
      required this.songs,
      required this.onAddSong,
      required this.onUpvote})
      : super(key: key);

  @override
  State<SongRequestsScreen> createState() => _SongRequestsScreenState();
}

class _SongRequestsScreenState extends State<SongRequestsScreen> {
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      children: [
        const ScreenHeader(headerText: 'Song Requests'),
        const SizedBox(height: Styles.mainSpacing),
        SongRequests(
          songs: widget.songs,
          onAddSong: widget.onAddSong,
          onUpvote: widget.onUpvote,
        ),
      ],
    );
  }
}
