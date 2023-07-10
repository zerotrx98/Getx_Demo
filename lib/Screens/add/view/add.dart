
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/addCOntroller.dart';

class Add extends StatelessWidget {
  AddController addController = Get.find<AddController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ADD"),),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            TextField(
              onChanged: (value) {
                addController.num1.value = double.parse(value);
              },
              decoration: InputDecoration(labelText: 'Number 1'),
            ),
            TextField(
              onChanged: (value) {
                addController.num2.value = double.parse(value);
              },
              decoration: InputDecoration(labelText: 'Number 2'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                addController.calcu();
              },
              child: Text('ADD'),
            ),
            SizedBox(height: 16),
            Obx(() => Text('Result: ${addController.result.value}')),
          ],
        ),
      ),
    );
  }
}