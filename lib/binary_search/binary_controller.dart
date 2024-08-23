


import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';

class BinarySearchController extends GetxController {
  var array = <int>[].obs;
  var target = 0.obs;
  var low = 0.obs;
  var high = 0.obs;
  var mid = 0.obs;
  var result = "".obs;

  void binarySearch() async {
    low.value = 0;
    high.value = array.length - 1;

    while (low.value <= high.value) {
      mid.value = (low.value + high.value) ~/ 2;
      await Future.delayed(Duration(seconds: 1));
      if (array[mid.value] == target.value) {
        result.value = "Found at position ${mid.value}";
        return;
      } else if (array[mid.value] < target.value) {
        low.value = mid.value + 1;
      } else {
        high.value = mid.value - 1;
      }
    }

    result.value = "Not Found";
  }

  void updateArray(String input) {
    array.value = input.split(',').map((e) => int.parse(e.trim())).toList();
  }

  void updateTarget(String input) {
    target.value = int.parse(input);
  }
}
