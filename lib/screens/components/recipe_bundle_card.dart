import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/recipe_bundle.dart';
import '../../size_config.dart';

class RecipeBundleCard extends StatelessWidget {
  final RecipeBundle recipeBundle;
  final Function press;

  const RecipeBundleCard(
      {Key? key, required this.recipeBundle, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: press(),
      child: Container(
        decoration: BoxDecoration(
          color: recipeBundle.color,
          borderRadius: BorderRadius.circular(defaultSize * 1.8),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(defaultSize * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Spacer(),
                    Text(
                      recipeBundle.title,
                      style: TextStyle(
                        fontSize: defaultSize * 2.2,
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: defaultSize * 0.5),
                    Text(
                      recipeBundle.description,
                      style: const TextStyle(
                        color: Colors.white54,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    buildInfoRow(
                      defaultSize,
                      iconScr: 'assets/icons/pot.svg',
                      text: '${recipeBundle.recipes} Recipes',
                    ),
                    SizedBox(height: defaultSize * 0.5),
                    buildInfoRow(
                      defaultSize,
                      iconScr: 'assets/icons/chef.svg',
                      text: '${recipeBundle.chefs} Chefs',
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            SizedBox(width: defaultSize * 0.5),
            AspectRatio(
              aspectRatio: 0.71,
              child: Image.asset(
                recipeBundle.imageSrc,
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Row buildInfoRow(double defaultSize, {required String iconScr, text}) {
  return Row(
    children: <Widget>[
      SvgPicture.asset(iconScr),
      SizedBox(width: defaultSize),
      Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    ],
  );
}
