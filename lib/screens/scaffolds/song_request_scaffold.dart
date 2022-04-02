import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/screens/main/song_requests_screen.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';
import 'package:staugustinechsnewapp/utilities/songs/song_bloc.dart';
import 'package:staugustinechsnewapp/widgets/reusable/popup_card.dart';
import 'package:staugustinechsnewapp/widgets/song_requests/add_song_form.dart';

class SongRequestsScaffold extends StatefulWidget {
  const SongRequestsScaffold({Key? key}) : super(key: key);
  @override
  State<SongRequestsScaffold> createState() => _SongRequestsScaffoldState();
}

class _SongRequestsScaffoldState extends State<SongRequestsScaffold> {
  late AuthBloc authBloc;
  late SongBloc songBloc;

  TextEditingController songNameController = TextEditingController();
  TextEditingController artistNameController = TextEditingController();

  @override
  void initState() {
    authBloc = BlocProvider.of<AuthBloc>(context);
    songBloc = BlocProvider.of<SongBloc>(context);
    songBloc.add(const SongEvent.getSongs());
    super.initState();
  }

  void onAddSong() {
    usePopupCard(
        context: context,
        title: 'Add Song',
        child: AddSongForm(
          onSubmitSong: onSubmitSong,
          songNameController: songNameController,
          artistNameController: artistNameController,
        ));
  }

  void onSubmitSong() {
    songBloc.add(SongEvent.addSong(
        name: songNameController.text,
        artist: artistNameController.text,
        creatorEmail: authBloc.state.user!.email!));
    Navigator.pop(context);
  }

  void onUpvote(bool upvoted, String songName) {}

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SongBloc, SongState>(builder: (context, state) {
      return SafeArea(
          child: SongRequestsScreen(
        songs: state.songs,
        onAddSong: onAddSong,
        onUpvote: onUpvote,
      ));
    });
  }
}
