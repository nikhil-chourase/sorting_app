

import 'package:get/get.dart';

class PalindromeCheckController extends GetxController {
  var input = "".obs;
  var isPalindrome = false.obs;

  void checkPalindrome(String text) {
    input.value = text;
    isPalindrome.value = text == text.split('').reversed.join('');
  }
}
