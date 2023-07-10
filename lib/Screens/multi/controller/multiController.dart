

import 'package:get/get.dart';

class MultiController extends GetxController {
  var num1 = 0.0.obs;
  var num2 = 0.0.obs;
  var result = 0.0.obs;

  void calcu() {
    result.value = num1.value * num2.value;
  }
}
