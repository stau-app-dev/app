import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:staugustinechsnewapp/main.dart';
import 'package:staugustinechsnewapp/widgets/reusable/custom_snackbar.dart';
import 'package:url_launcher/url_launcher.dart';

// Replace with your IP address. Don't commit these changes.
String ipAddress = '0.0.0.0';

// If you change the port, change it here too. It should default to 5001
String port = '5001';

/// The domain of the server.
String getCloudFunctionsDomain() {
  if (env == Environment.dev) {
    return 'http://$ipAddress:$port/staugustinechsapp/us-central1';
  } else {
    return 'https://us-central1-staugustinechsapp.cloudfunctions.net';
  }
}

/// Launches the given URL in a browser.
void launchURL({required BuildContext context, required String url}) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    useCustomSnackbar(
        context: context,
        message: 'Could not launch $url',
        type: ESnackBarType.failure);
    throw 'Could not launch $url';
  }
}

const defaultErrorImageURL =
    'https://www.armandhammer.com/-/media/aah/feature/articles/cat-litter-articles/happy-cat.jpg';
