import 'package:flutter/material.dart';

class BottomTestScreen2 extends StatelessWidget {
  const BottomTestScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Test Screen 2',
                style: TextStyle(fontSize: 30.0),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/test_screen_3');
                  },
                  child: Text('go to testScreen 3'))
            ],
          ),
      ),
    );
  }
}
