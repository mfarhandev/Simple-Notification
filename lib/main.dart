import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

import 'Basic Notification/BasicNotificationScreen.dart';

void main() {

  // Initialize the Awesome notification package
  AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(
          channelKey: 'basic_channel',
          channelName: 'Basic notifications',
          channelDescription: 'Notification channel for basic tests',
      ),
    ],
    debug: true,
  );


  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasicNotificationScreen(),
    );
  }
}

