import 'package:flutter/material.dart';
import 'package:remainder_notification_application/screens/notification_services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  NotificationsServices notificationsServices = NotificationsServices();

  @override
  void initState() {
    super.initState();
    notificationsServices.initialiseNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Remainder Notification Application'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                notificationsServices.sendNotification(
                  'this is title',
                  'This is body',
                );
              },
              child: const Text('Send Notification'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                notificationsServices.scheduleNotification(
                  'sch title',
                  'body',
                );
              },
              child: const Text('Schedule notification'),
            ),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: const Teflutter pub add flutter_local_notificationsflutter pub add flutter_local_notificationsxt(''),
            // ),
          ],
        ),
      ),
    );
  }
}
