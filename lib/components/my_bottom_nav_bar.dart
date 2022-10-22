import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../models/nav_item.dart';
import '../size_config.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    double defaultSize = SizeConfig.defaultSize;
    final navItems = Provider.of<NavItems>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultSize * 3),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -7),
            blurRadius: 30,
            color: const Color(0xFF4B1A39).withOpacity(0.2),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: navItems.items
              .map(
                (item) => buildIconNavBarItem(
                  isActive: navItems.selectedIndex == item.id,
                  icon: item.icon,
                  press: () {
                    navItems.changeNavIndex(index: item.id);
                    final destination = item.destination;
                    if (destination != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => destination,
                        ),
                      );
                    }
                  },
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

IconButton buildIconNavBarItem({
  required String icon,
  required void Function() press,
  bool isActive = false,
}) {
  return IconButton(
    icon: SvgPicture.asset(
      icon,
      color: isActive ? kPrimaryColor : const Color(0xFFD1D4D4),
      height: 22,
    ),
    onPressed: press,
  );
}
