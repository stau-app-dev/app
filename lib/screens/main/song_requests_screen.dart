import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/songs/song/song.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/popup_card.dart';
import 'package:staugustinechsnewapp/widgets/reusable/screen_header.dart';
import 'package:staugustinechsnewapp/widgets/song_requests/add_song_form.dart';
import 'package:staugustinechsnewapp/widgets/song_requests/song_requests.dart';

class SongRequestsScreen extends StatefulWidget {
  final List<Song> songs;

  const SongRequestsScreen({Key? key, required this.songs}) : super(key: key);

  @override
  State<SongRequestsScreen> createState() => _SongRequestsScreenState();
}

class _SongRequestsScreenState extends State<SongRequestsScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController artistController = TextEditingController();

  void onAddSong() {
    usePopupCard(
        context: context,
        title: 'Add Song',
        child: AddSongForm(
          onSubmitSong: onSubmitSong,
        ));
  }

  void onSubmitSong() {}

  void onUpvote(bool upvoted, String songName) {}

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Styles.mainOutsidePadding,
      children: <Widget>[
        const SizedBox(height: Styles.mainVerticalPadding),
        const ScreenHeader(headerText: 'Song Requests'),
        const SizedBox(height: Styles.mainSpacing),
        SongRequests(
          songs: widget.songs,
          onAddSong: onAddSong,
          onUpvote: onUpvote,
        ),
        const SizedBox(height: Styles.mainVerticalPadding),
      ],
    );
  }
}
