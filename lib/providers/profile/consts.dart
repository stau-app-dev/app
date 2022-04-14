import 'package:staugustinechsnewapp/providers/network.dart';

String getUserEndpoint = getCloudFunctionsDomain() + '/getUser';
String updateUserFieldEndpoint = getCloudFunctionsDomain() + '/updateUserField';
const errorGettingUser = 'Error getting user';
const errorUpdatingUserField = 'Error updating user field';
