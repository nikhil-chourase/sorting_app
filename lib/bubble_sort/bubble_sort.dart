import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sorting_numbers/bubble_sort/bubble_controller.dart';

class BubbleSortScreen extends StatelessWidget {
  final BubbleSortController controller = Get.put(BubbleSortController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bubble Sort')),

      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Enter numbers separated by commas'),
              onChanged: (input) {
                controller.updateArray(input);
              },
            ),
            ElevatedButton(
              onPressed: () {
                controller.bubbleSort();
              },
              child: Text('Sort'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Obx(() => ListView.builder(
                itemCount: controller.sortedArray.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(controller.sortedArray[index].toString()),
                    tileColor: (index == controller.currentJ.value || index == controller.currentJ.value + 1)
                        ? Colors.red
                        : null,
                  );
                },
              )),
            ),
          ],
        ),
      ),
    );
  }
}




// class BubbleSortScreen extends StatefulWidget {
//   @override
//   _BubbleSortScreenState createState() => _BubbleSortScreenState();
// }

// class _BubbleSortScreenState extends State<BubbleSortScreen> {
//   List<int> array = [];
//   List<int> sortedArray = [];
//   int currentI = -1;
//   int currentJ = -1;

//   Future<void> bubbleSort() async {
//     setState(() {
//       sortedArray = List.from(array);
//     });

//     for (int i = 0; i < sortedArray.length - 1; i++) {
//       for (int j = 0; j < sortedArray.length - i - 1; j++) {
//         if (sortedArray[j] > sortedArray[j + 1]) {
//           setState(() {
//             int temp = sortedArray[j];
//             sortedArray[j] = sortedArray[j + 1];
//             sortedArray[j + 1] = temp;
//             currentI = i;
//             currentJ = j;
//           });
//           await Future.delayed(Duration(milliseconds: 500)); // Visual delay
//         }
//       }
//     }

//     // Reset the highlighting after sorting is complete
//     setState(() {
//       currentI = -1;
//       currentJ = -1;
//     });
//   }

//   void _handleInputChange(String input) {
//     setState(() {
//       array = input.split(',').map((e) => int.tryParse(e.trim()) ?? 0).toList();
//       sortedArray = List.from(array);
//     });
//   }

//   Widget _buildNumberList() {
//     return Expanded(
//       child: ListView.builder(
//         itemCount: sortedArray.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(sortedArray[index].toString()),
//             tileColor: (index == currentJ || index == currentJ + 1)
//                 ? Colors.red
//                 : null,
//           );
//         },
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Bubble Sort')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: <Widget>[
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Enter numbers separated by commas',
//               ),
//               onChanged: _handleInputChange,
//             ),
//             ElevatedButton(
//               onPressed: bubbleSort,
//               child: Text('Sort'),
//             ),
//             SizedBox(height: 20),
//             _buildNumberList(),
//           ],
//         ),
//       ),
//     );
//   }
// }
