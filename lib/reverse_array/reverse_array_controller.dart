import 'package:get/get.dart';

class ReverseArrayController extends GetxController {
  var array = <int>[].obs;
  var reversedArray = <int>[].obs;

  void updateArray(String input) {
    array.value = input.split(',').map((e) {
      e = e.trim();
      if (e.isEmpty) {
        return null;
      }
      return int.tryParse(e);
    }).where((e) => e != null).cast<int>().toList();

    reversedArray.clear();
  }

  void reverseArray() {
    reversedArray.value = array.reversed.toList();
  }
}
