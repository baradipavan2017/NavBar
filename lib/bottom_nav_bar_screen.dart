import 'package:flutter/material.dart';
import 'package:navbar/tab_nav.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _currentIndex = 0;
  String _currentPage = "Home";

  List<String> pageKeys = [
    "Home",
    "Cards",
    "Transaction",
    "Rewards",
  ];

  final Map<String, GlobalKey<NavigatorState>> _navigatorKeys = {
    "Home": GlobalKey<NavigatorState>(),
    "Cards": GlobalKey<NavigatorState>(),
    "Transaction": GlobalKey<NavigatorState>(),
    "Rewards": GlobalKey<NavigatorState>(),
  };

  Widget _buildOffsetNavigator(String pageName) {
    return Offstage(
      offstage: _currentPage != pageName,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[pageName]!,
        page: pageName,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRoute =
            !await _navigatorKeys[_currentPage]!.currentState!.maybePop();
        if (isFirstRoute) {
          if (_currentPage != "Home") {
            setState(() {
              _currentIndex = 0;
              _currentPage = "Home";
            });
            return false;
          }
        }
        return isFirstRoute;
      },
      child: Scaffold(
        body: Stack(
          children: [
            _buildOffsetNavigator("Home"),
            _buildOffsetNavigator("Cards"),
            _buildOffsetNavigator("Transaction"),
            _buildOffsetNavigator("Rewards"),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: 'Cards',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.monetization_on),
                label: 'Transactions',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.money_off_csred_outlined),
                label: 'Rewards',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
                _currentPage = pageKeys[index];
              });
            }),
      ),
    );
  }
}
