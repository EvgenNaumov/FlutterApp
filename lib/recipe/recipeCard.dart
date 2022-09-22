import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'recipe.dart';
import 'recipeData.dart';

Widget buildRecipeCard(Recipe recipe) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Image(
            image: recipe.imageUrl != null
                ? AssetImage(recipe.imageUrl!)
                : const AssetImage('assets/warning-notification-alert-.jpg'),
          ),
          const SizedBox(
            height: 14.0,
          ),
          Text(
            checkLabel(recipe.label),
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    ),
  );
}