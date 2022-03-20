// Flutter: Exsiting Libraries
import 'package:flutter/material.dart';

// Screens
import './screens/home_screen.dart';

// Main Function
void main() {
  runApp(MyApp());
}

// MyApp StatelessWidget Class
class MyApp extends StatelessWidget {
  // Build Method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: HomeScreen(),
    );
  }
}
