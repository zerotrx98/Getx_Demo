import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/routes.dart';


import 'Screens/homeScreen.dart';

void main() {
  // Bining().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialBinding: Bining(),
      getPages: AppRoutes.pages,
      initialRoute: AppRoutes.homeScreen,
      home: HomeScreen(),
    );
  }
}
