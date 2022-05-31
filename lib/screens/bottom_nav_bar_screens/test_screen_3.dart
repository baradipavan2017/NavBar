import 'package:flutter/material.dart';

class BottomTestScreen3 extends StatelessWidget {
  const BottomTestScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Test Screen 3',
                style: TextStyle(fontSize: 30.0),
              ),
            ],
          ),
      ),
    );
  }
}
