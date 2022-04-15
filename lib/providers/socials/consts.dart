import 'package:staugustinechsnewapp/providers/network.dart';

String addClubEndpoint = getCloudFunctionsDomain() + '/addClub';
String getUserClubsEndpoint = getCloudFunctionsDomain() + '/getUserClubs';
const errorAddingClub = 'Error adding club';
const errorGettingUserClubs = 'Error getting user clubs';
