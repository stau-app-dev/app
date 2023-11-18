import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/songs/song/song.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_button.dart';

class SongRequests extends StatelessWidget {
  final List<Song> songs;
  final Function() onPressedAddSong;
  final Function(bool upvoted, String id) onPressedUpvote;
  final bool disableUpvote;
  final Function(
      {required String id,
      required String name,
      required String artist,
      required String creatorEmail})? onLongPressSong;

  const SongRequests(
      {Key? key,
      required this.songs,
      required this.onPressedAddSong,
      required this.onPressedUpvote,
      required this.disableUpvote,
      this.onLongPressSong})
      : super(key: key);

  Widget buildSongInfo(
      {required BuildContext context,
      required String songName,
      required String artistName}) {
    return Expanded(
        child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            decoration: BoxDecoration(
                color: Styles.white,
                border: Border.all(
                  color: Styles.primary,
                  width: 1.0,
                ),
                borderRadius: Styles.mainBorderRadius),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(songName, style: Theme.of(context).textTheme.titleSmall),
                Text('By: $artistName'),
              ],
            )));
  }

  List<Widget> buildItems(BuildContext context) {
    List<Widget> widgets = [];
    for (var song in songs) {
      bool upvoted = song.upvoted ?? false;
      Color upvoteColor = upvoted ? Styles.secondary : Styles.white;

      widgets.add(Material(
          child: Ink(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Styles.primary, borderRadius: Styles.mainBorderRadius),
              child: InkWell(
                  borderRadius: Styles.mainBorderRadius,
                  splashColor: disableUpvote ? Styles.secondary : null,
                  onTap: () {
                    if (disableUpvote) {
                      return;
                    }
                    onPressedUpvote(!upvoted, song.id);
                  },
                  onLongPress: () {
                    if (onLongPressSong != null) {
                      onLongPressSong!(
                          id: song.id,
                          name: song.name,
                          artist: song.artist,
                          creatorEmail: song.creatorEmail);
                    }
                  },
                  child: Row(children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.keyboard_arrow_up_rounded,
                                color: upvoteColor),
                            Text(song.upvotes.toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        color: upvoteColor, fontSize: 12.0))
                          ],
                        )),
                    buildSongInfo(
                        context: context,
                        songName: song.name,
                        artistName: song.artist),
                  ])))));
      widgets.add(const SizedBox(height: 10.0));
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return BasicContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RoundedButton(text: 'Add Song', onPressed: onPressedAddSong),
        const SizedBox(height: Styles.mainSpacing),
        ...buildItems(context),
      ],
    ));
  }
}
