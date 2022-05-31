import 'package:flutter/material.dart';
import 'package:navbar/screens/persistent_nav_bar_screens/test_Screen_5.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class TestScreen4 extends StatelessWidget {
  const TestScreen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Test Screen 4'),
            ElevatedButton(
                onPressed: () {
                  pushNewScreen(context, screen: TestScreen5());
                },
                child: Text('Go to test Screen 5'))
          ],
        ),
      ),
    );
  }
}
