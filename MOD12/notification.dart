import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//Fikri Maulana-1301200239
class Noti {
  static Future<void> initialize(
      FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin) async {
    var androidInitialize = AndroidInitializationSettings('mipmap/ic_launcher');
    var iOSInitialize = IOSInitializationSettings();
    var initializationSettings = InitializationSettings(
      android: androidInitialize,
      iOS: iOSInitialize,
    );
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  static Future<void> showBigTextNotification({
    int id = 0,
    required String title,
    required String body,
    String? payload,
    required FlutterLocalNotificationsPlugin fln,
  }) async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      '10160',
      'channel_name',
      playSound: true,
      importance: Importance.max,
      priority: Priority.high,
    );
    var notificationDetails = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: IOSNotificationDetails(),
    );
    await fln.show(10160, title, body, notificationDetails);
  }
}

// main.dart
//Fikri Maulana-1301200239

import 'notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void main() {
  runApp(const MyApp());
}
//Fikri Maulana-1301200239
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
//Fikri Maulana-1301200239
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
//Fikri Maulana-1301200239
class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Noti.initialize(flutterLocalNotificationsPlugin);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 54, 169, 61),
            Color.fromARGB(255, 62, 122, 182),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 16, 73, 172).withOpacity(0.5),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            width: 200,
            height: 200,
            child: ElevatedButton(
              onPressed: () {
                Noti.showBigTextNotification(
                  title: "New Notification",
                  body: "Fikri Maulana - 1301200239",
                  fln: flutterLocalNotificationsPlugin,
                );
              },
              child: const Text("Show Notification"),
            ),
          ),
        ),
      ),
    );
  }
}
