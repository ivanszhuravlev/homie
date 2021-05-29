import 'package:flutter/material.dart';
import 'package:homie/navigation/root_navigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'My Flutter App',
      home: RootNavigator(),
    );
  }
}
