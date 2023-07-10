import 'package:get/get.dart';
import 'package:untitled/Screens/sub/controller/subController.dart';

class SubBinding extends Bindings{
  @override
  void dependencies() {
Get.lazyPut(() => SubiController());
  }

}