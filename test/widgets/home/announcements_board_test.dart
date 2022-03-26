import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:staugustinechsnewapp/models/announcements/general_announcement/general_announcement.dart';
import 'package:staugustinechsnewapp/widgets/home/announcements_board.dart';

void main() {
  group('AnnouncementsBoard widget tests', () {
    List<Map<String, String>> testAnnouncementsJson = [
      {
        'title': 'Announcement Dupe',
        'content': 'Nice',
      },
      {
        'title': 'Announcement Dupe',
        'content': 'Nice',
      },
      {
        'title': 'St. Augustine CHS App Dev Team',
        'content': 'New App coming soon, check in for more updates',
      },
      {
        'title': 'Our Roots Club',
        'content': 'Join our roots club to get involved in the community',
      },
    ];

    List<GeneralAnnouncement> testAnnouncements = testAnnouncementsJson
        .map((announcement) => GeneralAnnouncement.fromJson(announcement))
        .toList();

    testWidgets('it displays title', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AnnouncementsBoard(announcements: testAnnouncements),
          ),
        ),
      );

      expect(find.text('Announcements Board'), findsOneWidget);
    });

    testWidgets('it displays items', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AnnouncementsBoard(announcements: testAnnouncements),
          ),
        ),
      );

      expect(find.text('Announcement Dupe'), findsNWidgets(2));
      expect(find.text('New App coming soon, check in for more updates'),
          findsNWidgets(1));
    });
  });
}
