import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/utils/notification_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  NotificationController notificationController =
      Get.put(NotificationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Notifications'),
              Obx(
                () => Switch(
                    value: notificationController.notification.value,
                    onChanged: ((value) {
                      notificationController.setNotification(value);
                    })),
              )
            ],
          ),
          Image(
            height: Get.height * 0.3,
            width: Get.height * 0.3,
            image: const AssetImage(
              'Images/loginnn.png',
            ),
          ),
          TextButton(
              onPressed: () {
                Get.toNamed('/contactscreen');
              },
              child: const Text('Go to Contacts'))
        ]),
      ),
    ));
  }
}
