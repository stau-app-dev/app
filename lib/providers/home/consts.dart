import 'package:staugustinechsnewapp/providers/network.dart';

String getDayNumberEndpoint = '${getCloudFunctionsDomain()}/getDayNumber';
String getSpiritMetersEndpoint = '${getCloudFunctionsDomain()}/getSpiritMeters';
String getVerseOfDayEndpoint = '${getCloudFunctionsDomain()}/getVerseOfDay';
const errorGettingDayNumber = 'Error getting day number';
const errorGettingSpiritMeters = 'Error getting spirit meters';
const errorGettingVerseOfDay = 'Error getting verse of day';
