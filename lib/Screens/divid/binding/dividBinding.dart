import 'package:get/get.dart';
import 'package:untitled/Screens/divid/controller/dividController.dart';

class DividBinding extends Bindings{
  @override
  void dependencies() {
Get.lazyPut(() => DividController());  }

}