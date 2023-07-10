import 'package:get/get.dart';

import '../controller/addCOntroller.dart';

class AddBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AddController());
  }

}