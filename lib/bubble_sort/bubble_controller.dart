
import 'package:get/get.dart';

class BubbleSortController extends GetxController {
  var array = <int>[].obs;
  var sortedArray = <int>[].obs;
  var currentI = (-1).obs;
  var currentJ = (-1).obs;

  void updateArray(String input) {
    array.value = input.split(',').map((e) => int.parse(e.trim())).toList();
    sortedArray.value = List.from(array); // Initialize sortedArray with the input
  }

  Future<void> bubbleSort() async {
    for (int i = 0; i < sortedArray.length - 1; i++) {
      for (int j = 0; j < sortedArray.length - i - 1; j++) {
        currentI.value = i;
        currentJ.value = j;

        if (sortedArray[j] > sortedArray[j + 1]) {
          int temp = sortedArray[j];
          sortedArray[j] = sortedArray[j + 1];
          sortedArray[j + 1] = temp;

          await Future.delayed(Duration(milliseconds: 500));  // Visual delay
        }
      }
    }
    // Reset highlighting after sorting is complete
    currentI.value = -1;
    currentJ.value = -1;
  }
}
