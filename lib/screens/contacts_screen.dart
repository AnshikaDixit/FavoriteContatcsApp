import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/screens/dashboard.dart';
import 'package:getx_state_management/utils/counter_controller.dart';
import 'package:getx_state_management/utils/listtitle_1.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  //int counter = 1;
  final CounterController controller = Get.put(CounterController());
  // @override
  // void initState() {
  //   super.initState();
  // }

  List<String> nameList = ['Anshika','Shreya','Aakrati','Riya','Awadhi','Tiya','Iti','Gungun','Arnav','Ayu'];
  List<String> favList = ['Anshika','Aakrati','Awadhi','Iti','Arnav'];

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Tuts'),
      ),
      body: Column(
        children: [
          GestureDetector(onTap: () {
            controller.incrementCounter();
          }, child: Obx(
            () {
              return Text(controller.counter.toString());
            },
          )),
          const Listtile1(),
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('en', 'US'));
                  },
                  child: const Text('English')),
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('es', 'ES'));
                  },
                  child: const Text('Spanish')),
            ],
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  Get.to(const Dashboard());
                },
                child: const Text('Go to next Screen')),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('Getx Snackbar', 'How u doin?',
              backgroundColor: Colors.grey, snackPosition: SnackPosition.TOP);
        },
        child: const Center(child: Icon(Icons.remove_red_eye)),
      ),
    );
  }
}
