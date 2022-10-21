import 'package:flutter/material.dart';
import 'package:study_20_10_22/models/RecipeBundel.dart';
import 'package:study_20_10_22/screens/components/recipe_bungel_card.dart';
import 'package:study_20_10_22/size_config.dart';
import 'categories.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Categories(),
          Expanded(
              child: Padding(
                padding:  EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultSize *2,
              ),
                child: GridView.builder(
                    itemCount: recipeBundles.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                         SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: SizeConfig.orientation == Orientation.landscape
                          ? SizeConfig.defaultSize * 2
                          : 0,
                        childAspectRatio: 1.65,
                      ),
                      itemBuilder: (context, index) => RecipeBundelCard(
                          recipeBundle: recipeBundles [index],
                          press: () {},
                      )
                  ),
              ),
              ),
        ],
      ),
    );
  }
}

