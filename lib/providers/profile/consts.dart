import 'package:staugustinechsnewapp/providers/network.dart';

String addClubEndpoint = getCloudFunctionsDomain() + '/addClub';
String getUserEndpoint = getCloudFunctionsDomain() + '/getUser';
String updateUserFieldEndpoint = getCloudFunctionsDomain() + '/updateUserField';
const errorAddingClub = 'Error adding club';
const errorGettingUser = 'Error getting user';
const errorUpdatingUserField = 'Error updating user field';
