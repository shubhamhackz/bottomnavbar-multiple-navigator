import 'package:bottom_navbar/routes/home_page.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
