import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/dividController.dart';

class Divid extends StatelessWidget {
  DividController dividController = Get.find<DividController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DIVID"),),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            TextField(
              onChanged: (value) {
                dividController.num1.value = double.parse(value);
              },
              decoration: InputDecoration(labelText: 'Number 1'),
            ),
            TextField(
              onChanged: (value) {
                dividController.num2.value = double.parse(value);
              },
              decoration: InputDecoration(labelText: 'Number 2'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                dividController.calcu();
              },
              child: Text('DIVID'),
            ),
            SizedBox(height: 16),
            Obx(() => Text('Result: ${dividController.result.value}')),
          ],
        ),
      ),
    );
  }
}