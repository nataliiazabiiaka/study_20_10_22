import 'package:flutter/material.dart';

import '../screens/components/home_screen.dart';
import '../screens/profile/profile_screen.dart';

class NavItem {
  final int id;
  final String icon;
  final Widget? destination;

  NavItem({required this.id, required this.icon, this.destination});
}

class NavItems extends ChangeNotifier {
  int selectedIndex = 0;

  void changeNavIndex({required int index}) {
    selectedIndex = index;
    notifyListeners();
  }

  List<NavItem> items = [
    NavItem(
      id: 0,
      icon: 'assets/icons/home.svg',
      destination: const HomeScreen(),
    ),
    NavItem(
      id: 1,
      icon: 'assets/icons/list.svg',
    ),
    NavItem(
      id: 2,
      icon: 'assets/icons/camera.svg',
    ),
    NavItem(
      id: 3,
      icon: 'assets/icons/chef_nav.svg',
    ),
    NavItem(
      id: 4,
      icon: 'assets/icons/user.svg',
      destination: const ProfileScreen(),
    ),
  ];
}
