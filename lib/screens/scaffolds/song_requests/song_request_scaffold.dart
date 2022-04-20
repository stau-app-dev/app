import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/screens/main/song_requests/song_requests_screen.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';
import 'package:staugustinechsnewapp/utilities/local_storage/write_to_local_storage.dart';
import 'package:staugustinechsnewapp/utilities/profile/consts.dart';
import 'package:staugustinechsnewapp/utilities/profile/profile_bloc.dart';
import 'package:staugustinechsnewapp/utilities/songs/song_bloc.dart';
import 'package:staugustinechsnewapp/widgets/reusable/custom_snackbar.dart';
import 'package:staugustinechsnewapp/widgets/reusable/popup_card.dart';
import 'package:staugustinechsnewapp/widgets/song_requests/add_song_form.dart';
import 'package:staugustinechsnewapp/widgets/song_requests/delete_song_form.dart';

class SongRequestsScaffold extends StatefulWidget {
  const SongRequestsScaffold({Key? key}) : super(key: key);

  @override
  State<SongRequestsScaffold> createState() => _SongRequestsScaffoldState();
}

class _SongRequestsScaffoldState extends State<SongRequestsScaffold> {
  late AuthBloc authBloc;
  late SongBloc songBloc;

  @override
  void initState() {
    authBloc = BlocProvider.of<AuthBloc>(context);
    songBloc = BlocProvider.of<SongBloc>(context);
    onRefresh();
    super.initState();
  }

  void onRefresh() {
    songBloc.add(const SongEvent.getSongs());
  }

  void onPressedAddSong() {
    usePopupCard(
        context: context,
        title: 'Add Song',
        child: AddSongForm(
          onPressedSubmit: onPressedSubmit,
        ));
  }

  void onPressedSubmit(String songName, String artistName) {
    songBloc.add(SongEvent.addSong(
        name: songName,
        artist: artistName,
        creatorEmail: authBloc.state.user!.email!));
    Navigator.pop(context);
  }

  void onPressedUpvote(bool upvoted, String id) {
    setUpvotedData(
      upvoted: upvoted,
      id: id,
    );
    songBloc.add(SongEvent.upvoteSong(
      id: id,
      upvotes: upvoted ? 1 : -1,
    ));
  }

  void onDeleteSong(
      {required String id,
      required String name,
      required String artist,
      required String creatorEmail}) {
    usePopupCard(
        context: context,
        title: 'Delete Song',
        child: DeleteSongForm(
            onSubmitDeleteSong: onSubmitDeleteSong,
            id: id,
            name: name,
            artist: artist,
            creatorEmail: creatorEmail));
  }

  void onSubmitDeleteSong(String id) {
    // songBloc.add(SongEvent.deleteSong(id: id));
    Navigator.pop(context);
  }

  Future<void> setUpvotedData(
      {required bool upvoted, required String id}) async {
    Map<String, dynamic> upvotedMap = {};
    // Copy the existing upvoted data
    for (var song in songBloc.state.songs) {
      upvotedMap[song.id] = (song.upvoted ?? false) ? 'true' : 'false';
    }

    // Set the new upvoted data
    upvotedMap[id] = upvoted ? 'true' : 'false';

    // Remove deleted songs
    for (var song in songBloc.state.songs) {
      if (!upvotedMap.containsKey(song.id)) {
        upvotedMap.remove(song.id);
      }
    }

    await writeJsonToLocal(upvotedMap, EFileName.upvoted);
  }

  Future<Map<String, dynamic>> readUpvoteData() async {
    Map<String, dynamic> upvotes = await readJsonFromLocal(EFileName.upvoted);
    if (upvotes['error'] != null) {
      return {};
    }
    return upvotes;
  }

  Future<void> onSongsLoaded() async {
    Map<String, dynamic> upvoted = await readUpvoteData();
    songBloc.add(SongEvent.setUpvoted(upvoted: upvoted));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, profileState) {
      return BlocConsumer<SongBloc, SongState>(
          listenWhen: ((previous, current) {
        // Run this if only after songs have been fetched for the first time
        if (previous.songs.isEmpty && current.songs.isNotEmpty) {
          onSongsLoaded();
        }
        return true;
      }), listener: (context, songState) async {
        if (songState.failure != null) {
          useCustomSnackbar(
              context: context,
              message: songState.failure!.message,
              type: ESnackBarType.failure);
          songBloc.add(const SongEvent.resetFailSuccess());
        }
        // NOTE: Do note show success snackbar after a successful upvote
        //       because that is not an ideal UX.
        // Only get new songs from the database after a success
        if (songState.success != null) {
          songBloc.add(const SongEvent.getSongs());
          songBloc.add(const SongEvent.resetFailSuccess());
        }
        // After getting songs successfully, set the upvoted data
        if (songState.lastUpdated != null &&
            songState.lastUpdated != DateTime.now()) {
          onSongsLoaded();
        }
      }, builder: (context, state) {
        return SafeArea(
            child: SongRequestsScreen(
          songs: state.songs,
          onPressedAddSong: onPressedAddSong,
          onPressedUpvote: onPressedUpvote,
          onRefresh: onRefresh,
          disableUpvote: state.isLoading,
          onDeleteSong: profileState.user?.status == staffProfileStatus
              ? onDeleteSong
              : null,
        ));
      });
    });
  }
}
