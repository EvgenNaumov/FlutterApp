import 'package:app/service/ServiceApi.dart';
import 'package:app/weather/vm/view_model_main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WeatherStateWidget extends StatelessWidget{

  const WeatherStateWidget(this.serviceApi, {Key? key}):super(key: key);

  final ServiceApi serviceApi;

  static Widget create(ServiceApi serviceApi){
    return ChangeNotifierProvider(
      child: WeatherStateWidget(serviceApi),
      create: (context) => ViewModelMain(),

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second screen'),
      )
      ,
    );
  }
}