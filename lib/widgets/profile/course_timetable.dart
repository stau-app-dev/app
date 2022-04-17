import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/basic_container.dart';

class CourseTimetable extends StatelessWidget {
  const CourseTimetable({Key? key}) : super(key: key);

  Widget buildItems(BuildContext context) {
    List<Map<String, String>> sampleCourses = [
      {'course': 'ENG4U - English', 'lunch': 'n/a'},
      {'course': 'ICS4U - Computer Science', 'lunch': 'n/a'},
      {'course': 'PPL4U - Fitness Leadership', 'lunch': 'A'},
      {'course': 'CGW4U - World Issues', 'lunch': 'C'},
    ];

    List<Widget> rows = [];
    for (var course in sampleCourses) {
      EdgeInsetsGeometry padding =
          const EdgeInsets.symmetric(vertical: 7.0, horizontal: 16.0);

      rows.add(
        Container(
            width: MediaQuery.of(context).size.width,
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
    return BasicContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Course Timetable', style: Theme.of(context).textTheme.headline6),
        const SizedBox(height: Styles.mainSpacing),
        buildItems(context),
      ],
    ));
  }
}
