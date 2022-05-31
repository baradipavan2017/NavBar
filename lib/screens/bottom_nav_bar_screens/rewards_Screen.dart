import 'package:flutter/material.dart';

class RewardsScreen extends StatelessWidget {
  const RewardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Rewards Screen",
              style: TextStyle(fontSize: 30.0),

            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/test_screen_4');
                },
                child: Text('go to screen 4'))
          ],
        ),
      ),
    );
  }
}
