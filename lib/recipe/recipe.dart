import 'package:app/recipe/recipeData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RecipeListView.dart';


class MyRecipeCalculator extends StatefulWidget {
  final String title;

  const MyRecipeCalculator({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _MyRecipeCalculator();
}

class _MyRecipeCalculator extends State<MyRecipeCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: RecipeListView(),
      ),
    );
  }
}



String checkLabel(String? label) {
  return label ?? 'empty';
}