import 'package:flutter/material.dart';
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

class TabNavigator extends StatelessWidget {
  const TabNavigator({Key? key, required this.navigatorKey, required this.page})
      : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;
  final String page;

  @override
  Widget build(BuildContext context) {
    print("pressed the on tappppp");
    Widget? child;
    if (page == 'Home') {
      child = const HomeScreen();
    } else if (page == 'Cards') {
      child = const CardsScreen();
    } else if (page == 'Transaction') {
      child = const TransactionsScreen();
    } else if (page == 'Rewards') {
      child = const RewardsScreen();
    }
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        print("Route name----->>>${routeSettings.name}");
        return MaterialPageRoute(builder: (context) {
          switch (routeSettings.name) {
            case '/test_screen_1':
              return const BottomTestScreen1();
            case '/test_screen_2':
              return const BottomTestScreen2();
            case '/test_screen_3':
              return const BottomTestScreen3();
            case '/test_screen_4':
              return const BottomTestScreen4();
            case '/test_screen_5':
              return const BottomTestScreen5();
            case '/test_screen_6':
              return const BottomTestScreen6();
          }
          return child!;
        });
      },
    );
  }
}
