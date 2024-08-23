import 'package:flutter/material.dart';
import 'package:sorting_numbers/binary_search/binary_search.dart';
import 'package:sorting_numbers/bubble_sort/bubble_sort.dart';
import 'package:sorting_numbers/palindrome/palindrome.dart';
import 'package:sorting_numbers/reverse_array/reverse_array.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Algorithm Visualizer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatelessWidget {
  @override

  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Algorithm Visualizer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BubbleSortScreen()),
                );
              },
              child: Text('Bubble Sort'),
            ),
            
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReverseArrayScreen()),
                );
              },
              child: Text('Reverse Array'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PalindromeCheckScreen()),
                );
              },
              child: Text('Palindrome Check'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BinarySearchScreen()),
                );
              },
              child: Text('Binary Search'),
            ),
          ],
        ),
      ),
    );
  }
}
