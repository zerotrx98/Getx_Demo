import 'package:get/get.dart';
import 'package:untitled/Screens/add/controller/addCOntroller.dart';
import 'package:untitled/Screens/sub/controller/subController.dart';

import 'divid/controller/dividController.dart';
import 'multi/controller/multiController.dart';

class Bining extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => MultiController());
    // Get.lazyPut(() => AddController());
    // Get.lazyPut(() => SubiController());
    // Get.lazyPut(() => DividController());

    Get.put<MultiController>(MultiController());
    Get.put<AddController>(AddController());
    Get.put<SubiController>(SubiController());
    Get.put<DividController>(DividController());


  }
}
