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
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';

class DevPrint extends StatelessWidget {
  const DevPrint({Key? key}) : super(key: key);

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
                  String text = 'AuthState: $authState\n\n'
                      'CafeMenuState: $cafeMenuState\n\n'
                      'HomeState: $homeState\n\n'
                      'ProfileState: $profileState\n\n'
                      'NavState: $navState\n\n'
                      'SocialsState: $socialsState\n\n'
                      'SongState: $songState';
                  return BasicContainer(
                    child: Linkify(
                      text: text,
                      linkStyle:
                          Theme.of(context).textTheme.bodyText2!.copyWith(
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
                });
              });
            });
          });
        });
      });
    });
  }
}
