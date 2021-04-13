// import 'package:flutter/material.dart';
// import './home_page.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.orange,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:food_app/home_page.dart';
import 'search_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Contacts',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

//TODO
// Landing page
// Map addresses to restaurant
//// clicking tile automatically changes index
//// Fix search tiles
//// Move "more reviews" down
//// Review Modal
//// Modal Layer blur
//// Review page (more reviews)
// location data
// filter options
// Make dish name the title.
// Improve styling
// Add 'x' for the search to clear
// Style snackbar better
//
// EVALS:
// Audrey -
// no home screen
// first page should be blank
// Matt -
// Get rid of selected
// too far
// Mads -
// Snackbar color
// Category screen
// Browsing screen would be better with dishes
// Sort list by restaurant name
// Landing page to soften the blow.
//// Get Directions button implementation
//// Fix stars
