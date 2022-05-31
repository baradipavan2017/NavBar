import 'package:flutter/material.dart';

class BottomTestScreen5 extends StatelessWidget {
  const BottomTestScreen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Test Screen 5',
              style: TextStyle(fontSize: 30.0),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/test_screen_6');
                },
                child: Text('go to screen 6'))
          ],
        ),
      ),
    );
  }
}
