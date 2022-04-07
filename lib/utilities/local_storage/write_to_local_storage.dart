import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

enum EFileName {
  songRequests,
  upvotes,
}

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

Future<File> _localFile(EFileName fileName) async {
  final path = await _localPath;
  return File('$path/${fileName.toString()}.json');
}

/// Saves the [json] to the local storage as a [fileName].json.
Future<File> writeJsonToLocal(
    Map<String, String> json, EFileName fileName) async {
  final file = await _localFile(fileName);
  return file.writeAsString(json.toString());
}

/// Reads the [fileName].json from the local storage and returns the [json].
Future<Map<String, String>> readJsonFromLocal(EFileName fileName) async {
  try {
    final file = await _localFile(fileName);
    String contents = await file.readAsString();
    return Map<String, String>.from(json.decode(contents));
  } catch (e) {
    return {
      'error': 'Data cannot be read from file',
    };
  }
}
