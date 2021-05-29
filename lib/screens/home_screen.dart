import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Сегодня"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Launch screen'),
          onPressed: () {
            // Navigate to the second screen when tapped.
          },
        ),
      ),
    );
  }
}