
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class BasicNotificationScreen extends StatefulWidget {
  const BasicNotificationScreen({super.key});

  @override
  State<BasicNotificationScreen> createState() => _BasicNotificationScreenState();
}

class _BasicNotificationScreenState extends State<BasicNotificationScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Take Notification Permission From the User
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if(!isAllowed){
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });

  }


  triggerNotification(){
    AwesomeNotifications().createNotification(
        content: NotificationContent(
            // unique id
            id: 10,
            // channel key will be same like in the main file
            channelKey: 'basic_channel',
            title: 'Simple Notification',
            body: 'Simple Notification body',

        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Push Notification"),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: triggerNotification,
           child: Text("Trigger Notification"),
          ),
        )
      ),
    );
  }
}
