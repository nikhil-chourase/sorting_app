
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'reverse_array_controller.dart';

class ReverseArrayScreen extends StatelessWidget {
  final ReverseArrayController controller = Get.put(ReverseArrayController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reverse Array')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Enter numbers separated by commas'),
              onChanged: controller.updateArray,
            ),
            ElevatedButton(
              onPressed: controller.reverseArray,
              child: Text('Reverse'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(() => Column(
                        children: controller.array
                            .map((num) => Text(num.toString(), style: TextStyle(fontSize: 24)))
                            .toList(),
                      )),
                  Obx(() => Column(
                        children: controller.reversedArray
                            .map((num) => Text(num.toString(), style: TextStyle(fontSize: 24)))
                            .toList(),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
