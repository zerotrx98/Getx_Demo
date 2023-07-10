import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/multiController.dart';

class Multi extends StatelessWidget {
  MultiController _multiController = Get.find<MultiController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MULTI"),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                _multiController.num1.value = double.parse(value);
              },
              decoration: InputDecoration(labelText: 'Number 1'),

            ),
            TextField(
              onChanged: (value) {
                _multiController.num2.value = double.parse(value);
              },
              decoration: InputDecoration(labelText: 'Number 2'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _multiController.calcu();
              },
              child: Text('MULTI'),
            ),
            SizedBox(height: 16),
            Obx(() => Text('Result: ${_multiController.result.value}')),
          ],
        ),
      ),
    );
  }
}