import 'package:flutter/material.dart';
import 'package:uthrift/screens/home/home_screen.dart';
import 'package:uthrift/screens/category/category_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UThrift',
      home: HomeScreen(),
    );
  }
}
