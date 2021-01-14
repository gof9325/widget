import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/material.dart';

// 2021.01.14 (15) Flutter tutorial Local Notification_push message : 알림창

class no15 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _no15State();
}

class _no15State extends State<no15>{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Local Notification_push"),
          centerTitle: true,
        ),
        body: Container(

        ),
      );
  }

}

class noti{
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  AndroidNotificationDetails androidNotificationDetails;
  IOSNotificationDetails iosNotificationDetails;
  NotificationDetails platformChannelSpecifics;

  AndroidInitializationSettings initializationSettingsAndroid;
  IOSInitializationSettings initializationSettingsIOS;
  InitializationSettings initializationSettings;

  @override
  void initState(){

  }
}