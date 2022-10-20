import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study_20_10_22/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().int(context);
    return Scaffold(
      appBar: buildAppBar(),
    );
  }

      AppBar buildAppBar() {
      return AppBar(
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Image.asset('assets/images/logo.png'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/search.svg'),
        ),
          SizedBox(width: SizeConfig.defaultSize * 0.5),
        ],
      );
  }
}
