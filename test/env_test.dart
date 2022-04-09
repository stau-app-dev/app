import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:staugustinechsnewapp/main.dart';

void main() {
  group('Env test', () {
    testWidgets('it does not use dev', (tester) async {
      expect(env, isNot('dev'));
    });
  });
}
