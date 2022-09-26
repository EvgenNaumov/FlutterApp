import 'package:app/service/serviceApiStreameBilder.dart';
import 'package:app/service/serviceApiWeather.dart';
import 'package:app/weather/weatherDTO.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../service/ServiceApi.dart';

class WeatherWidget extends StatefulWidget {
  final String title;

  const WeatherWidget({super.key, required this.title});

  @override
  State<WeatherWidget> createState() => _WeatherWidget();
}

class _WeatherWidget extends State<WeatherWidget> {
  late ServiceApiWeather service;
  late ServiceApiStreameBilder serviceStreame;

  final controller = ScrollController();

  @override
  void initState() {
    service = ServiceApiWeather();

    serviceStreame = ServiceApiStreameBilder();
    serviceStreame?.getStreameWeather();
    controller.position.pixels;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
                'Rick and Morty', style: TextStyle(fontSize: 12.0)),
          ),

          body: getFutureWidgetWeather(service!),
        )
    );
  }
}

Widget getFutureWidgetWeather(ServiceApiWeather service) {
  return FutureBuilder<WeatherResponse>(
      future: service.getDataWeather(),
  builder: (context, AsyncSnapshot snap) {
  if (!snap.hasData) {
  return const Center(
  child: SizedBox(
  height: 40,
  width: 40,
  child: CircularProgressIndicator(color: Colors.black,),

  ),
  );
  } else {
  return Center(
  child: Text('${snap.data.name}'));
  }
  });
}

Widget getStreameWidgetWeather(ServiceApiStreameBilder service) {
  return StreamBuilder<WeatherResponse>(
      stream: service.streamController.stream,
      builder: (context, AsyncSnapshot snap)
  {
    if (!snap.hasData) {
      return const Center(
        child: SizedBox(
          height: 40,
          width: 40,
          child: CircularProgressIndicator(color: Colors.black,),

        ),
      );
    } else {
      return Center(
          child: Text(
              '${snap.data?.data?.timelines?.first.intervals[0]?.value}'));
    }
  });
}