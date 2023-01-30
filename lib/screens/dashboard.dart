import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/utils/opacity_controller.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  //controller to access the value defined in getxcontroller class
  final OpacityController opacityController = Get.put(OpacityController());
  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
        ),
        body: Column(
          children: [
            TextButton(
                onPressed: () {
                  //Navigator.pop(context);
                  Get.back();
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //function to access the updated values
                    Obx(
                      () => Center(
                        child: Container(
                          color: Colors.pink
                              .withOpacity(opacityController.opacity.value),
                          height: Get.height * 0.3,
                          width: Get.height * 0.3,
                        ),
                      ),
                    ),
                    Obx(
                      () => Slider(
                          value: opacityController.opacity.value,
                          onChanged: ((value) {
                            opacityController.setOpacity(value);
                            // setState(() {});
                          })),
                    ),
                    const Text('Go back!'),
                  ],
                ))
          ],
        ));
  }
}
