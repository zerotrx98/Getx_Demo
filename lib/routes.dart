import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:untitled/Screens/add/binding/addBinding.dart';
import 'package:untitled/Screens/divid/binding/dividBinding.dart';
import 'package:untitled/Screens/multi/binding/multiBinding.dart';
import 'package:untitled/Screens/sub/binding/subBinding.dart';

import 'package:untitled/Screens/homeScreen.dart';

import 'Screens/add/view/add.dart';
import 'Screens/divid/view/divid.dart';
import 'Screens/multi/view/multii.dart';
import 'Screens/sub/view/sub.dart';

class AppRoutes {
  static String homeScreen = '/home';
  static String multi = '/multi';
  static String divid = '/divid';
  static String sub = '/sub';
  static String add = '/add';

  static List<GetPage> pages = [
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
    ),
    GetPage(name: multi, page: () => Multi(), binding: MultiBinding()),
    GetPage(name: divid, page: () => Divid(), binding: DividBinding()),
    GetPage(name: sub, page: () => Sub(), binding: SubBinding()),
    GetPage(name: add, page: () => Add(), binding: AddBinding())
  ];
}
