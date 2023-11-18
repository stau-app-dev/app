import 'dart:math';

/// A general utility class that contains various methods that are used throughout the app.
class GeneralUtils {
  GeneralUtils._();

  /// Returns a random string of length [length]
  static String generateRandomString({required int length}) {
    const chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    final Random rnd = Random();
    return String.fromCharCodes(
        Iterable.generate(length, (_) => rnd.nextInt(chars.length))
            .map((i) => chars.codeUnitAt(i)));
  }
}
