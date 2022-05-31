import 'package:flutter/material.dart';
import 'package:navbar/bottom_nav_bar_screen.dart';
import 'package:navbar/persisten_nav_bar_screen.dart';
import 'package:navbar/screens/bottom_nav_bar_screens/cards_Screen.dart';
import 'package:navbar/screens/bottom_nav_bar_screens/home_Screen.dart';
import 'package:navbar/screens/bottom_nav_bar_screens/rewards_Screen.dart';
import 'package:navbar/screens/bottom_nav_bar_screens/test_screen_1.dart';
import 'package:navbar/screens/bottom_nav_bar_screens/test_screen_2.dart';
import 'package:navbar/screens/bottom_nav_bar_screens/test_screen_3.dart';
import 'package:navbar/screens/bottom_nav_bar_screens/test_screen_4.dart';
import 'package:navbar/screens/bottom_nav_bar_screens/test_screen_5.dart';
import 'package:navbar/screens/bottom_nav_bar_screens/test_screen_6.dart';
import 'package:navbar/screens/bottom_nav_bar_screens/trans_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/homeScreen': (context) => const HomeScreen(),
        '/rewardsScreen': (context) => const RewardsScreen(),
        '/transactionScreen': (context) => const TransactionsScreen(),
        '/cardsScreen': (context) => const CardsScreen(),
        '/test_screen_1': (context) => const BottomTestScreen1(),
        '/test_screen_2': (context) => const BottomTestScreen2(),
        '/test_screen_3': (context) => const BottomTestScreen3(),
        '/test_screen_4': (context) => const BottomTestScreen4(),
        '/test_screen_5': (context) => const BottomTestScreen5(),
        '/test_screen_6': (context) => const BottomTestScreen6(),
      },
      // home: PersistentScreen(),
      home: BottomNavBarScreen(),
    );
  }
}
