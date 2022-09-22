import 'package:app/rickmortydata/RickMortyDTO.dart';
import 'package:app/rickmortydata/RickMortyWidget.dart';
import 'package:app/ui/SecondWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //для именованной навигации
      routes: {
        '/secondScreen': (context) => SecondWidget(),
      },
      //для именованной навигации
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RickMortyWidget(title:'Rick Morty'),
      // home: const MyHomePageNew(title: 'Flutter Demo Home Page'),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      //home: const MyRecipeCalculator(title: 'Recipe Demo'),
    );
  }
}