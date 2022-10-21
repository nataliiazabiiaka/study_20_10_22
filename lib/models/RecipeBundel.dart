import 'package:flutter/material.dart';

class RecipeBundel {
  final int id, chefs, recipes;
  final String title, description, imageSrc;
  final Color color;

  RecipeBundel(
  { required this.id,
     required this.chefs,
     required this.recipes,
    required this.title,
     required this.description,
     required this.imageSrc,
     required this.color});
}

List<RecipeBundel> recipeBundles = [
  RecipeBundel(
      id: 1,
      chefs: 16,
      recipes: 95,
      title: 'Cook Something New Everyday',
      description: 'New and tasty recipes every minute',
      imageSrc: 'assets/images/cook_new@2x.png',
      color: const Color(0xFFD82D40),
  ),
  RecipeBundel(
    id: 2,
    chefs: 8,
    recipes: 26,
    title: 'Best of 2020',
    description: 'Cook recipes for special occasions',
    imageSrc: 'assets/images/best_2020@2x.png',
    color: const Color(0xFF90AF17),
  ),
  RecipeBundel(
    id: 3,
    chefs: 10,
    recipes: 43,
    title: 'Food Court',
    description: "What's your favourite food dish make it now",
    imageSrc: 'assets/images/food_court@2x.png',
    color: const Color(0xFF2DBBD8),
  ),
];