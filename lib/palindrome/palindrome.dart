
import 'package:flutter/material.dart';


import 'package:get/get.dart';
import 'package:sorting_numbers/palindrome/palindrome_controller.dart';

class PalindromeCheckScreen extends StatelessWidget {
  final PalindromeCheckController controller = Get.put(PalindromeCheckController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Palindrome Check')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Enter a string'),
              onChanged: controller.checkPalindrome,
            ),
            SizedBox(height: 20),
            Obx(() => Text(
                  controller.isPalindrome.value ? 'This is a palindrome!' : 'Not a palindrome!',
                  style: TextStyle(
                      fontSize: 24,
                      color: controller.isPalindrome.value ? Colors.green : Colors.red),
                )),
          ],
        ),
      ),
    );
  }
}
