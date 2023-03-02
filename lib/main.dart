import 'dart:async';

import 'package:backgorund_workmanager/backgorund_service_key.dart';
import 'package:flutter/material.dart';
import 'package:workmanager/workmanager.dart';

import 'Myapp.dart';
import 'app/services/background_service.dart';

void sendDriverPosition() async {
  debugPrint("My Postiition right now is ${DateTime.now()}");
  // It will be repeat after 5 seconds [Frequency] until destroy the task in a background
  PositionBackgroundService().initilize(frequency: 5);
}

void callbackDispatcher() {
  Workmanager().executeTask((taskName, inputData) {
    switch (taskName) {
      case BackgroundServiceKey.sendDriverPostition:
        sendDriverPosition();
        break;
      default:
    } //simpleTask will be emitted here.
    return Future.value(true);
  });
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Workmanager().initialize(
    callbackDispatcher,
    isInDebugMode: true,
  );
  runApp(
    MyApp(),
  );
}
