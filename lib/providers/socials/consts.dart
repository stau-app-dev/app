import 'package:staugustinechsnewapp/providers/network.dart';

String addClubEndpoint = getCloudFunctionsDomain() + '/addClub';
String getUserClubsEndpoint = getCloudFunctionsDomain() + '/getUserClubs';
String getUserClubsNotJoinedEndpoint =
    getCloudFunctionsDomain() + '/getUserClubsNotJoined';
String getClubEndpoint = getCloudFunctionsDomain() + '/getClub';
String addClubAnnouncementEndpoint =
    getCloudFunctionsDomain() + '/addClubAnnouncement';
String deleteClubAnnouncementEndpoint =
    getCloudFunctionsDomain() + '/deleteClubAnnouncement';
String getClubAnnouncementsEndpoint =
    getCloudFunctionsDomain() + '/getClubAnnouncements';
String addUserToClubEndpoint = getCloudFunctionsDomain() + '/addUserToClub';
String addUserToPendingClubEndpoint =
    getCloudFunctionsDomain() + '/addUserToPendingClub';
String promoteUserToAdminEndpoint =
    getCloudFunctionsDomain() + '/promoteUserToAdmin';
String removeUserFromClubEndpoint =
    getCloudFunctionsDomain() + '/removeUserFromClub';
const errorAddingClub = 'Error adding club';
const errorGettingUserClubs = 'Error getting user clubs';
const errorGettingUserClubsNotJoined = 'Error getting user clubs not joined';
const errorGettingClub = 'Error getting club';
const errorAddingClubAnnouncement = 'Error adding club announcement';
const errorDeletingClubAnnouncement = 'Error deleting club announcement';
const errorGettingClubAnnouncements = 'Error getting club announcements';
const errorAddingUserToClub = 'Error adding user to club';
const errorAddingUserToPendingClub = 'Error adding user to pending club';
const errorPromotingUserToAdmin = 'Error promoting user to admin';
const errorRemovingUserFromClub = 'Error removing user from club';
