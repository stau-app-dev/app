import 'package:staugustinechsnewapp/providers/network.dart';

String addClubEndpoint = getCloudFunctionsDomain() + '/addClub';
String getUserClubsEndpoint = getCloudFunctionsDomain() + '/getUserClubs';
String getUserClubsNotJoinedEndpoint =
    getCloudFunctionsDomain() + '/getUserClubsNotJoined';
String getClubEndpoint = getCloudFunctionsDomain() + '/getClub';
String addClubAnnouncementEndpoint =
    getCloudFunctionsDomain() + '/addClubAnnouncement';
String getClubAnnouncementsEndpoint =
    getCloudFunctionsDomain() + '/getClubAnnouncements';
String addUserToClubEndpoint = getCloudFunctionsDomain() + '/addUserToClub';
String addUserToPendingClubEndpoint =
    getCloudFunctionsDomain() + '/addUserToPendingClub';
String removeUserFromClubEndpoint =
    getCloudFunctionsDomain() + '/removeUserFromClub';
const errorAddingClub = 'Error adding club';
const errorGettingUserClubs = 'Error getting user clubs';
const errorGettingClub = 'Error getting club';
const errorAddingClubAnnouncement = 'Error adding club announcement';
const errorGettingClubAnnouncements = 'Error getting club announcements';
const errorAddingUserToClub = 'Error adding user to club';
const errorAddingUserToPendingClub = 'Error adding user to pending club';
const errorRemovingUserFromClub = 'Error removing user from club';
