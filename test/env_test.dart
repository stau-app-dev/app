import 'package:flutter_test/flutter_test.dart';
import 'package:staugustinechsnewapp/main.dart';
import 'package:staugustinechsnewapp/providers/network.dart';

void main() {
  group('Env test', () {
    testWidgets('it does not use dev', (tester) async {
      expect(env, isNot('dev'));
    });

    testWidgets('it does not change network defaults', (tester) async {
      expect(ipAddress, equals('0.0.0.0'));
      expect(port, equals('5001'));
    });
  });
}
