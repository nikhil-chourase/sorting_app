import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sorting_numbers/binary_search/binary_controller.dart';



class BinarySearchScreen extends StatelessWidget {
  final BinarySearchController controller = Get.put(BinarySearchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Binary Search')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Enter sorted numbers separated by commas'),
              onChanged: controller.updateArray,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Enter target value'),
              onChanged: controller.updateTarget,
            ),
            ElevatedButton(
              onPressed: controller.binarySearch,
              child: Text('Search'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Obx(() {
                return ListView.builder(
                  itemCount: controller.array.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(controller.array[index].toString()),
                      tileColor: (index == controller.mid.value) ? Colors.green : null,
                    );
                  },
                );
              }),
            ),
            Obx(() => Text(controller.result.value)),
          ],
        ),
      ),
    );
  }
}



// class BinarySearchScreen extends StatefulWidget {

//   @override
//   _BinarySearchScreenState createState() => _BinarySearchScreenState();
// }



// class _BinarySearchScreenState extends State<BinarySearchScreen> {
//   List<int> array = [];
//   int target=0;
//   int low=0, high=0, mid=0;
//   String result = "";
  
//   void binarySearch() async {
//     low = 0;
//     high = array.length - 1;

//     while (low <= high) {
//       setState(() {
//         mid = (low + high) ~/ 2;
//       });
//       await Future.delayed(Duration(seconds: 1));
//       if (array[mid] == target) {
//         setState(() {
//           result = "Found at position $mid";
//         });
//         return;
//       } else if (array[mid] < target) {
//         setState(() {
//           low = mid + 1;
//         });
//       } else {
//         setState(() {
//           high = mid - 1;
//         });
//       }
//     }


//     setState(() {
//       result = "Not Found";
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Binary Search')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: <Widget>[
//             TextField(
//               decoration: InputDecoration(labelText: 'Enter sorted numbers separated by commas'),
//               onChanged: (input) {
//                 array = input.split(',').map((e) => int.parse(e.trim())).toList();
//               },
//             ),
//             TextField(
//               decoration: InputDecoration(labelText: 'Enter target value'),
//               onChanged: (input) {
//                 target = int.parse(input);
//               },
              
//             ),
//             ElevatedButton(
//               onPressed: binarySearch,
//               child: Text('Search'),
//             ),
//             SizedBox(height: 20),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: array.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(array[index].toString()),
//                     tileColor: (index == mid) ? Colors.green : null,
//                   );
//                 },
//               ),
//             ),
//             Text(result),
//           ],
//         ),
//       ),
//     );
//   }
// }
