import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/main.dart';

/// The domain of the server.
String getCloudFunctionsDomain() {
  if (env == Environment.dev) {
    // Replace with your IP address
    String ipAddress = '192.168.100.100';

    // If you change the port, change it here too. It should default to 5001
    String port = '5001';

    return 'http://$ipAddress:$port/staugustinechsapp/us-central1';
  } else {
    return 'https://us-central1-staugustinechsapp.cloudfunctions.net';
  }
}
