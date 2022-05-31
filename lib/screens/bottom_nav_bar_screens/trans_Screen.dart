import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Transactions Screen",
              style: TextStyle(fontSize: 30.0),
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/test_screen_5');
            }, child: Text('Go to test screen 5')),
          ],
        ),
      ),
    );
  }
}
