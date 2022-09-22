import 'package:flutter/material.dart' ;

import 'recipeCard.dart';
import 'recipeData.dart';

Widget RecipeListView(){
  return ListView.builder(
    itemCount: Recipe.samples.length,
    itemBuilder: (BuildContext context, int index) {
      return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const Text('detail page');
                },
              ),
            );
          },
          child: buildRecipeCard(Recipe.samples[index]));
    },
  );
}