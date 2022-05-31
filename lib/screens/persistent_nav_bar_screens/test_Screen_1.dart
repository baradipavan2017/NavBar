import 'package:flutter/material.dart';
import 'package:navbar/screens/persistent_nav_bar_screens/test_Screen_2.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class TestScreen1 extends StatelessWidget {
  const TestScreen1({Key? key}) : super(key: key);

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
                  pushNewScreen(context, screen: TestScreen2());
                },
                child: Text('go to testScreen 2'))
          ],
        ),
      ),
    );
  }
}
