import 'package:app/rickmortydata/RickMortyWidget.dart';
import 'package:app/service/ServiceApi.dart';
import 'package:app/service/ServiceApiDioImpl.dart';
import 'package:app/service/serviceApiWeather.dart';
import 'package:app/ui/SecondWidget.dart';
import 'package:app/weather/weather_widget_vm.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyAppVM());
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
      // home: const RickMortyWidget(title:'Rick Morty'),
      home: MyAppVM(),
      // home: const MyHomePageNew(title: 'Flutter Demo Home Page'),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      //home: const MyRecipeCalculator(title: 'Recipe Demo'),
    );
  }
}

class MyAppVM extends StatelessWidget{
  final ServiceApiWeather serviceApi = ServiceApiWeather();

  MyAppVM({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //для именованной навигации
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WeatherStateWidget.create(serviceApi),
    );
  }

}