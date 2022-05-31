import 'package:flutter/material.dart';
import 'package:navbar/screens/persistent_nav_bar_screens/tab_Screen_1.dart';
import 'package:navbar/screens/persistent_nav_bar_screens/tab_Screen_2.dart';
import 'package:navbar/screens/persistent_nav_bar_screens/tab_Screen_3.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class PersistentScreen extends StatelessWidget {
  PersistentScreen({Key? key}) : super(key: key);

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const TabScreen1(),
      const TabScreen2(),
      const TabScreen3(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: "Page 1",
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.amberAccent,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.hotel),
        title: "Page 2",
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.amberAccent,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.contact_mail),
        title: "Page 3",
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.amberAccent,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarItems(),
      controller: _controller,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      navBarStyle: NavBarStyle.style1,
    );
  }
}
