import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/main.dart';
import 'package:url_launcher/url_launcher.dart';

/// The domain of the server.
String getCloudFunctionsDomain() {
  if (env == Environment.dev) {
    // Replace with your IP address
    String ipAddress = '192.168.0.133';

    // If you change the port, change it here too. It should default to 5001
    String port = '5001';

    return 'http://$ipAddress:$port/staugustinechsapp/us-central1';
  } else {
    return 'https://us-central1-staugustinechsapp.cloudfunctions.net';
  }
}

/// Launches the given URL in a browser.
void launchURL({required String url}) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
