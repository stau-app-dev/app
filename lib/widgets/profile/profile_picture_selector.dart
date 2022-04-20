import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/utilities/profile/consts.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_button.dart';

class ProfilePictureSelector extends StatefulWidget {
  final int currentPictureNumber;
  final void Function(int) onPressedSavePicture;

  const ProfilePictureSelector(
      {Key? key,
      required this.currentPictureNumber,
      required this.onPressedSavePicture})
      : super(key: key);

  @override
  _ProfilePictureSelectorState createState() => _ProfilePictureSelectorState();
}

class _ProfilePictureSelectorState extends State<ProfilePictureSelector> {
  int currentPictureNumber = 0;

  @override
  void initState() {
    currentPictureNumber = widget.currentPictureNumber;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double padding = 30.0;
    int crossAxisCount = 3;
    double axisSpacing = 25.0;

    return Column(children: [
      Container(
          padding: EdgeInsets.symmetric(horizontal: padding),
          height: MediaQuery.of(context).size.height * 0.5,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                childAspectRatio: 1.0,
                crossAxisSpacing: axisSpacing,
                mainAxisSpacing: axisSpacing,
              ),
              itemCount: profilePictures.length,
              itemBuilder: (context, index) {
                String pictureName = profilePictures[index];
                double radius = ((MediaQuery.of(context).size.width -
                        padding * 2 -
                        axisSpacing * 2) /
                    (crossAxisCount * 2));

                return InkWell(
                    onTap: () {
                      setState(() {
                        currentPictureNumber = index;
                      });
                    },
                    child: CircleAvatar(
                        backgroundColor: index == currentPictureNumber
                            ? Styles.secondary
                            : Styles.grey,
                        radius: radius,
                        child: CircleAvatar(
                          radius: radius - 4.0,
                          backgroundImage:
                              AssetImage('assets/profile_pics/$pictureName'),
                          backgroundColor: Styles.grey,
                        )));
              })),
      RoundedButton(
          text: 'Save',
          onPressed: () {
            widget.onPressedSavePicture(currentPictureNumber);
          })
    ]);
  }
}
