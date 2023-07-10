import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/subController.dart';

class Sub extends StatelessWidget {
  SubiController subiController = Get.find<SubiController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SUB"),),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            TextField(
              onChanged: (value) {
                subiController.num1.value = double.parse(value);
              },
              decoration: InputDecoration(labelText: 'Number 1'),
            ),
            TextField(
              onChanged: (value) {
                subiController.num2.value = double.parse(value);
              },
              decoration: InputDecoration(labelText: 'Number 2'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                subiController.calcu();
              },
              child: Text('SUB'),
            ),
            SizedBox(height: 16),
            Obx(() => Text('Result: ${subiController.result.value}')),
          ],
        ),
      ),
    );
  }
}
