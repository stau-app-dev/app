import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/screens/main/profile/profile_screen.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/utilities/navigation/nav_bloc.dart';
import 'package:staugustinechsnewapp/utilities/profile/profile_bloc.dart';
import 'package:staugustinechsnewapp/widgets/profile/profile_picture_selector.dart';
import 'package:staugustinechsnewapp/widgets/reusable/custom_snackbar.dart';
import 'package:staugustinechsnewapp/widgets/reusable/popup_card.dart';

class ProfileScaffold extends StatefulWidget {
  const ProfileScaffold({Key? key}) : super(key: key);
  @override
  State<ProfileScaffold> createState() => _ProfileScaffoldState();
}

class _ProfileScaffoldState extends State<ProfileScaffold> {
  late NavBloc navBloc;
  late ProfileBloc profileBloc;

  @override
  void initState() {
    navBloc = BlocProvider.of<NavBloc>(context);
    profileBloc = BlocProvider.of<ProfileBloc>(context);
    super.initState();
  }

  void onRefresh() {
    profileBloc.add(const ProfileEvent.refreshUser());
  }

  void onPressedSettings() {
    navBloc.add(const NavEvent.changeScreen(screen: ENav.settings));
  }

  void onPressedProfilePicture() {
    int pictureNumber = profileBloc.state.user?.picture ?? 0;
    usePopupCard(
      context: context,
      title: 'Profile Picture',
      child: ProfilePictureSelector(
        currentPictureNumber: pictureNumber,
        onPressedSavePicture: onPressedSavePicture,
      ),
    );
  }

  void onPressedSavePicture(int pictureNumber) {
    profileBloc.add(
        ProfileEvent.updateUserField(field: 'picture', value: pictureNumber));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(listener: (context, state) {
      // Refresh for any success events
      if (state.success != null) {
        onRefresh();
        useCustomSnackbar(
            context: context,
            message: state.success?.message ?? 'Success',
            type: ESnackBarType.success);
        profileBloc.add(const ProfileEvent.resetFailSuccess());
      }
    }, builder: (context, state) {
      return Stack(children: [
        Container(
          height:
              MediaQuery.of(context).size.height * Styles.backgroundBannerDepth,
          decoration: const BoxDecoration(
            color: Styles.primary,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(Styles.mainBorderRadiusValue),
              bottomRight: Radius.circular(Styles.mainBorderRadiusValue),
            ),
          ),
        ),
        ProfileScreen(
            pictureNumber: state.user?.picture ?? 0,
            name: state.user?.name ?? '',
            email: state.user?.email ?? '',
            onPressedSettings: onPressedSettings,
            onPressedProfilePicture: onPressedProfilePicture),
      ]);
    });
  }
}
