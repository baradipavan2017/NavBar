import 'package:flutter/material.dart';

class BottomTestScreen1 extends StatelessWidget {
  const BottomTestScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Test Screen 1',
              style: TextStyle(fontSize: 30.0),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/test_screen_2');
                },
                child: Text('go to testScreen 2'))
          ],
        ),
      ),
    );
  }
}
