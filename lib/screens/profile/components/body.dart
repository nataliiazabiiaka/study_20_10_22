import 'package:flutter/material.dart';
import 'package:study_20_10_22/screens/profile/components/profile_menu_item.dart';
import 'package:study_20_10_22/size_config.dart';
import 'info.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const Info(
            image: 'assets/images/pic.png',
            name: 'Jhon Doe',
            email: 'Jhondoe01@gmail.com',
          ),
          SizedBox(height:  SizeConfig.defaultSize * 2),
          ProfileMenuItem(
            iconSrc: 'assets/icons/bookmark_fill.svg',
            title: 'Saved Recipes',
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: 'assets/icons/chef_color.svg',
            title: 'Super Plan',
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: 'assets/icons/language.svg',
            title: 'Change Language',
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: 'assets/icons/info.svg',
            title: 'Help',
            press: () {},
          ),
        ],
      ),
    );
  }
}


