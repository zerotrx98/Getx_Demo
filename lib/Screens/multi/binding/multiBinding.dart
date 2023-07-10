import 'package:get/get.dart';
import 'package:untitled/Screens/multi/controller/multiController.dart';

class MultiBinding extends Bindings{
  @override
  void dependencies() {
Get.lazyPut(() => MultiController());  }

}