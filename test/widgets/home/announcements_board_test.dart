import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:staugustinechsnewapp/models/announcements/club_announcement/club_announcement.dart';
import 'package:staugustinechsnewapp/models/announcements/general_announcement/announcement.dart';
import 'package:staugustinechsnewapp/screens/layout/page_layout.dart';
import 'package:staugustinechsnewapp/widgets/reusable/announcements_board.dart';
import 'package:staugustinechsnewapp/widgets/reusable/rounded_button.dart';

void main() {
  group('AnnouncementsBoard widget tests', () {
    List<Announcement> testAnnouncements = [
      const Announcement(
        title: 'Test Announcement Title',
        content: 'Test Announcement Content',
      ),
      const Announcement(
        title: 'Test Announcement Title',
        content: 'Test Announcement Content',
      ),
      const Announcement(
        title: 'Test Announcement',
        content: 'Wow Content',
      ),
    ];

    List<ClubAnnouncement> testClubAnnouncements = [
      ClubAnnouncement(
          id: 'id',
          clubId: 'clubId',
          clubName: 'Club Name',
          content: 'Wow content',
          createdAt: DateTime.now(),
          creatorName: 'Creator Name'),
      ClubAnnouncement(
          id: 'id',
          clubId: 'clubId',
          clubName: 'Club Name 2',
          content: 'Wow content',
          createdAt: DateTime.now(),
          creatorName: 'Creator Name 2'),
    ];

    testWidgets('it displays title', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: PageLayout(
            listView: true,
            children: [AnnouncementsBoard(announcements: testAnnouncements)],
          ),
        ),
      );

      expect(find.text('Announcements Board'), findsOneWidget);
    });

    testWidgets('it displays general announcements', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: PageLayout(
            listView: true,
            children: [AnnouncementsBoard(announcements: testAnnouncements)],
          ),
        ),
      );

      expect(find.text('Test Announcement Title'), findsNWidgets(2));
      expect(find.text('Wow Content'), findsNWidgets(1));
    });

    testWidgets('it displays club announcements', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: PageLayout(
            listView: true,
            children: [
              AnnouncementsBoard(
                clubAnnouncements: testClubAnnouncements,
              )
            ],
          ),
        ),
      );

      expect(find.text('Club Name'), findsNWidgets(1));
      expect(find.text('Club Name 2'), findsNWidgets(1));
    });

    testWidgets('it displays both types of announcements', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: PageLayout(
            listView: true,
            children: [
              AnnouncementsBoard(
                announcements: testAnnouncements,
                clubAnnouncements: testClubAnnouncements,
              )
            ],
          ),
        ),
      );

      expect(find.text('Test Announcement Title'), findsNWidgets(2));
      expect(find.text('Wow Content'), findsNWidgets(1));
      expect(find.text('Club Name'), findsNWidgets(1));
      expect(find.text('Club Name 2'), findsNWidgets(1));
    });

    testWidgets('it displays creator name on club screen', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: PageLayout(
            listView: true,
            children: [
              AnnouncementsBoard(
                announcements: testAnnouncements,
                clubAnnouncements: testClubAnnouncements,
                isClubScreen: true,
              )
            ],
          ),
        ),
      );

      expect(find.text('Creator Name'), findsNWidgets(1));
    });

    testWidgets('it displays add announcement button', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: PageLayout(
            listView: true,
            children: [
              AnnouncementsBoard(
                announcements: testAnnouncements,
                clubAnnouncements: testClubAnnouncements,
                onPressAddAnnouncement: () {},
              )
            ],
          ),
        ),
      );

      expect(find.byType(RoundedButton), findsOneWidget);
    });
  });
}
