import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

class CourseTimetable extends StatefulWidget {
  const CourseTimetable({Key? key}) : super(key: key);

  @override
  State<CourseTimetable> createState() => _CourseTimetableState();
}

class _CourseTimetableState extends State<CourseTimetable> {
  double getWidth(BuildContext context) => MediaQuery.of(context).size.width;
  EdgeInsetsGeometry padding =
      const EdgeInsets.symmetric(vertical: 7.0, horizontal: 16.0);

  Widget buildItems() {
    List<Map<String, String>> sampleCourses = [
      {'course': 'ENG4U - English', 'lunch': 'n/a'},
      {'course': 'ICS4U - Computer Science', 'lunch': 'n/a'},
      {'course': 'PPL4U - Fitness Leadership', 'lunch': 'A'},
      {'course': 'CGW4U - World Issues', 'lunch': 'C'},
    ];

    List<Widget> rows = [];
    for (var course in sampleCourses) {
      rows.add(
        Container(
            width: getWidth(context),
            decoration: BoxDecoration(
                color: Styles.white,
                border: Border.all(
                  color: Styles.primary,
                  width: 1.0,
                ),
                borderRadius: Styles.mainBorderRadius),
            child: Row(
              children: <Widget>[
                Padding(
                    padding: padding,
                    child: Text(
                      course['course']!,
                      style: Styles.normalSubText,
                    )),
                const Spacer(),
                course['lunch']! != 'n/a'
                    ? Container(
                        alignment: Alignment.center,
                        width: 50.0,
                        decoration: const BoxDecoration(
                          border: Border(
                            left: BorderSide(width: 1.0, color: Styles.primary),
                          ),
                          // color: Colors.white,
                        ),
                        child: Padding(
                            padding: padding,
                            child: Text(
                              course['lunch']!,
                              style: Styles.normalSubText,
                            )))
                    : Container(),
              ],
            )),
      );
      rows.add(const SizedBox(height: 10.0));
    }
    return Column(children: rows);
  }

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
            const Text('Course Timetable', style: Styles.normalMainText),
            const SizedBox(height: Styles.mainSpacing),
            buildItems(),
          ],
        ));
  }
}
