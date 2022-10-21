import 'package:flutter/material.dart';
import 'package:study_20_10_22/components%20/my_bottom_nav_bar.dart';
import 'package:study_20_10_22/constants.dart';
import 'package:study_20_10_22/size_config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: const SizedBox(),
        centerTitle: true,
        title: Text('Profile'),
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Text(
                'Edit',
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.defaultSize * 1.6,
              fontWeight: FontWeight.bold,
            ),),
          )
        ],
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
