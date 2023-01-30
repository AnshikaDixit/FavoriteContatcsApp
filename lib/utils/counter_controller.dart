import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 1.obs; //counter creation

  incrementCounter() {
    counter.value++;
  }
}
