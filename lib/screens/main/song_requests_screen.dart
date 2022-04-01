import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/utilities/songs/song_bloc.dart';
import 'package:staugustinechsnewapp/widgets/reusable/screen_header.dart';
import 'package:staugustinechsnewapp/widgets/song_requests/song_requests.dart';

class SongRequestsScreen extends StatefulWidget {
  const SongRequestsScreen({Key? key}) : super(key: key);
  @override
  State<SongRequestsScreen> createState() => _SongRequestsScreenState();
}

class _SongRequestsScreenState extends State<SongRequestsScreen> {
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
        child: ListView(
          padding: Styles.mainOutsidePadding,
          children: <Widget>[
            const SizedBox(height: Styles.mainVerticalPadding),
            const ScreenHeader(headerText: 'Song Requests'),
            const SizedBox(height: Styles.mainSpacing),
            SongRequests(
              songs: state.songs,
            ),
            const SizedBox(height: Styles.mainVerticalPadding),
          ],
        ),
      );
    });
  }
}
