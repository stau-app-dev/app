import 'package:staugustinechsnewapp/providers/network.dart';

const errorGettingGeneralAnnouncements = 'Error getting general announcements';
String getGeneralAnnouncementsEndpoint =
    getCloudFunctionsDomain() + '/getGeneralAnnouncements';
