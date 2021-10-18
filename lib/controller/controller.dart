import 'package:get/get.dart';

class Controller extends GetxController {
  var value = 0.obs;
  change(input) {
    value = input;
    update();
  }
}
