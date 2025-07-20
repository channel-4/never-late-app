import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest('起動直後にスケジュールページが表示されている', ($) async {
    await $.pumpWidgetAndSettle(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text('Schedule')),
          backgroundColor: Colors.blue,
        ),
      ),
    );

    expect($('Schedule'), findsOneWidget);
    if (!Platform.isMacOS) {
      await $.native.pressHome();
    }
  });
}
