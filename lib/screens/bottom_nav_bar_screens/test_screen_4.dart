import 'package:flutter/material.dart';

class BottomTestScreen4 extends StatelessWidget {
  const BottomTestScreen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Test Screen 4',
              style: TextStyle(fontSize: 30.0),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/test_screen_5');
                },
                child: Text('go to screen 5'))
          ],
        ),
      ),
    );
  }
}
