import 'package:staugustinechsnewapp/providers/network.dart';

String addClubEndpoint = getCloudFunctionsDomain() + '/addClub';
String getUserClubsEndpoint = getCloudFunctionsDomain() + '/getUserClubs';
String getClubEndpoint = getCloudFunctionsDomain() + '/getClub';
const errorAddingClub = 'Error adding club';
const errorGettingUserClubs = 'Error getting user clubs';
const errorGettingClub = 'Error getting club';
