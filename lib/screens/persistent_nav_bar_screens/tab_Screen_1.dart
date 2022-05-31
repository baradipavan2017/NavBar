import 'package:flutter/material.dart';
import 'package:navbar/screens/persistent_nav_bar_screens/test_Screen_1.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class TabScreen1 extends StatelessWidget {
  const TabScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tab Screen 1',
              style: TextStyle(fontSize: 30.0),
            ),
            ElevatedButton(
                onPressed: () {
                  pushNewScreen(context, screen: TestScreen1());
                },
                child: Text('Go to TestScreen1'))
          ],
        ),
      ),
    );
  }
}
