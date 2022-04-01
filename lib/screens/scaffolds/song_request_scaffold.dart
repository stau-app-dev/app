import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/screens/main/song_requests_screen.dart';
import 'package:staugustinechsnewapp/utilities/songs/song_bloc.dart';

class SongRequestsScaffold extends StatefulWidget {
  const SongRequestsScaffold({Key? key}) : super(key: key);
  @override
  State<SongRequestsScaffold> createState() => _SongRequestsScaffoldState();
}

class _SongRequestsScaffoldState extends State<SongRequestsScaffold> {
  late SongBloc songBloc;

  @override
  void initState() {
    songBloc = BlocProvider.of<SongBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SongBloc, SongState>(builder: (context, state) {
      return SafeArea(
          child: SongRequestsScreen(
        songs: state.songs,
      ));
    });
  }
}
