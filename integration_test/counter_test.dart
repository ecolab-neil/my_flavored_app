import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_flavored_app/app/app.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest(
    'counter increments',
    ($) async {
      // Replace later with your app's main widget
      await $.pumpWidgetAndSettle(const App());
      await $.tap(find.byIcon(Icons.add));
      expect($('1'), findsOneWidget);
    },
  );
}
