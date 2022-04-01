import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/models/songs/song/song.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/popup_card.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_button.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_textfield.dart';

class SongRequests extends StatefulWidget {
  final List<Song> songs;
  const SongRequests({Key? key, required this.songs}) : super(key: key);

  @override
  State<SongRequests> createState() => _SongRequestsState();
}

class _SongRequestsState extends State<SongRequests> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  Widget buildSongInfo(String songName, String artistName) {
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
                Text(
                  songName,
                  style: Styles.normalSubText,
                ),
                Text(
                  'By: $artistName',
                  style: Styles.normalText,
                ),
              ],
            )));
  }

  List<Widget> buildItems() {
    List<Widget> songs = [];
    for (var song in widget.songs) {
      Color upvoteColor = Styles.white;

      songs.add(Container(
          width: getWidth(context),
          decoration: const BoxDecoration(
              color: Styles.primary, borderRadius: Styles.mainBorderRadius),
          child: Row(children: [
            Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        onPressed: () => onUpvote(true, song.name),
                        icon: Icon(Icons.keyboard_arrow_up_rounded,
                            color: upvoteColor)),
                    Text(
                      song.upvotes.toString(),
                      style:
                          const TextStyle(color: Styles.white, fontSize: 12.0),
                    ),
                  ],
                )),
            buildSongInfo(song.name, song.artist),
          ])));
      songs.add(const SizedBox(height: 10.0));
    }
    return songs;
  }

  Widget buildAddSongForm() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 5.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('Song Name', style: Styles.normalSubText),
          const SizedBox(height: 5.0),
          RoundedTextField(
              hintText: 'Song Name', controller: TextEditingController()),
          const SizedBox(height: 10.0),
          const Text('Artist Name', style: Styles.normalSubText),
          const SizedBox(height: 5.0),
          RoundedTextField(
              hintText: 'Artist Name', controller: TextEditingController()),
          const SizedBox(height: 10.0),
          RoundedButton(text: 'Submit', onPressed: onSubmitSong),
          const SizedBox(height: 30.0),
          Container(
              alignment: Alignment.center,
              child: const Text(
                  'Note: \nAll song recommendations MUST be school appropriate, this means no explicit language or subjects.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12.0))),
        ]));
  }

  void onAddSong() {
    usePopupCard(
        context: context, title: 'Add Song', child: buildAddSongForm());
  }

  void onSubmitSong() {}

  void onUpvote(bool upvoted, String songName) {}

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Styles.white,
            borderRadius: Styles.mainBorderRadius,
            boxShadow: Styles.normalBoxShadow),
        padding: const EdgeInsets.all(Styles.mainInsidePadding),
        width: getWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundedButton(text: 'Add Song', onPressed: onAddSong),
            const SizedBox(height: Styles.mainSpacing),
            ...buildItems(),
          ],
        ));
  }
}
