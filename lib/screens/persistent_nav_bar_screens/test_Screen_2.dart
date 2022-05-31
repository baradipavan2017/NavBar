import 'package:flutter/material.dart';

class TestScreen2 extends StatelessWidget {
  const TestScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Test Screen 2',
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    );
  }
}
