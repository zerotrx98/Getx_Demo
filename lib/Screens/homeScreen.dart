import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoutes.multi);
              },
              child: Text("Multiplication".toUpperCase()),
              style: ElevatedButton.styleFrom(),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoutes.sub);
              },
              child: Text("Subtraction".toUpperCase()),
              style: ElevatedButton.styleFrom(),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoutes.add);
              },
              child: Text("Addition".toUpperCase()),
              style: ElevatedButton.styleFrom(),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoutes.divid);
              },
              child: Text("Division".toUpperCase()),
              style: ElevatedButton.styleFrom(),
            ),

          ],
        ),
      ),
    );
  }
}
