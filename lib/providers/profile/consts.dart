import 'package:staugustinechsnewapp/providers/network.dart';

String getUserEndpoint = getCloudFunctionsDomain() + '/getUser';
String addClubEndpoint = getCloudFunctionsDomain() + '/addClub';
const errorGettingUser = 'Error getting user';
const errorAddingClub = 'Error adding club';
