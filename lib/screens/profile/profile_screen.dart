import 'package:flutter/material.dart';

import '../../components/my_bottom_nav_bar.dart';
import '../../constants.dart';
import '../../size_config.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leading: const SizedBox(),
      centerTitle: true,
      title: const Text('Profile'),
      actions: <Widget>[
        TextButton(
          onPressed: () {},
          child: Text(
            'Edit',
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.defaultSize * 1.6,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
