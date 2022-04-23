import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:staugustinechsnewapp/providers/network.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/utilities/auth/auth_bloc.dart';
import 'package:staugustinechsnewapp/utilities/cafe_menu/cafe_menu_bloc.dart';
import 'package:staugustinechsnewapp/utilities/home/home_bloc.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/utilities/profile/profile_bloc.dart';
import 'package:staugustinechsnewapp/utilities/socials/socials_bloc.dart';
import 'package:staugustinechsnewapp/utilities/songs/song_bloc.dart';

class DevPrint extends StatefulWidget {
  const DevPrint({Key? key}) : super(key: key);

  @override
  _DevPrintState createState() => _DevPrintState();
}

class _DevPrintState extends State<DevPrint> {
  List<bool> show = [false, false, false, false, false, false, false];
  List<String> titles = [
    'AuthBloc',
    'CafeMenuBloc',
    'HomeBloc',
    'NavBloc',
    'ProfileBloc',
    'SocialsBloc',
    'SongBloc',
  ];

  Widget buildText(BuildContext context, String text) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Linkify(
        text: text,
        linkStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
              fontSize: 12.0,
              color: Styles.secondary,
              decoration: TextDecoration.underline,
            ),
        onOpen: (link) async {
          launchURL(context: context, url: link.url);
        },
        style: Theme.of(context).textTheme.bodyText2!.copyWith(
              fontSize: 12.0,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, authState) {
      return BlocBuilder<CafeMenuBloc, CafeMenuState>(
          builder: (context, cafeMenuState) {
        return BlocBuilder<HomeBloc, HomeState>(builder: (context, homeState) {
          return BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, profileState) {
            return BlocBuilder<NavBloc, NavState>(builder: (context, navState) {
              return BlocBuilder<SocialsBloc, SocialsState>(
                  builder: (context, socialsState) {
                return BlocBuilder<SongBloc, SongState>(
                    builder: (context, songState) {
                  return ExpansionPanelList(
                    expansionCallback: (int index, bool isExpanded) {
                      setState(() {
                        show[index] = !show[index];
                      });
                    },
                    children: [
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text(titles[0],
                                style: Theme.of(context).textTheme.bodyText1),
                          );
                        },
                        body: buildText(context, authState.toString()),
                        isExpanded: show[0],
                      ),
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text(titles[1],
                                style: Theme.of(context).textTheme.bodyText1),
                          );
                        },
                        body: buildText(context, cafeMenuState.toString()),
                        isExpanded: show[1],
                      ),
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text(titles[2],
                                style: Theme.of(context).textTheme.bodyText1),
                          );
                        },
                        body: buildText(context, homeState.toString()),
                        isExpanded: show[2],
                      ),
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text(titles[3],
                                style: Theme.of(context).textTheme.bodyText1),
                          );
                        },
                        body: buildText(context, navState.toString()),
                        isExpanded: show[3],
                      ),
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text(titles[4],
                                style: Theme.of(context).textTheme.bodyText1),
                          );
                        },
                        body: buildText(context, profileState.toString()),
                        isExpanded: show[4],
                      ),
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text(titles[5],
                                style: Theme.of(context).textTheme.bodyText1),
                          );
                        },
                        body: buildText(context, socialsState.toString()),
                        isExpanded: show[5],
                      ),
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text(titles[6],
                                style: Theme.of(context).textTheme.bodyText1),
                          );
                        },
                        body: buildText(context, songState.toString()),
                        isExpanded: show[6],
                      ),
                    ],
                  );
                });
              });
            });
          });
        });
      });
    });
  }
}
