import 'package:flutter/material.dart';
import 'package:navbar/screens/persistent_nav_bar_screens/test_Screen_4.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class TabScreen2 extends StatelessWidget {
  const TabScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tab Screen 2',
              style: TextStyle(fontSize: 30.0),
            ),
            ElevatedButton(
                onPressed: () {
                  pushNewScreen(context, screen: TestScreen4());
                },
                child: Text('Go to testScreen 4'))
          ],
        ),
      ),
    );
  }
}
