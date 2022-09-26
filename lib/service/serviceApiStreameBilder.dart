import 'dart:async';

import 'package:dio/dio.dart';

import '../util.dart';
import '../weather/weatherDTO.dart';
import 'ServiceApi.dart';

class ServiceApiStreameBilder extends ServiceApi{
  final Dio client = Dio();

  StreamController<WeatherResponse> streamController = StreamController.broadcast();
  @override
  Future<void> getStreameWeather() async{
    var response = await client.get('$BASE_URL$DOMEN_URL',queryParameters:
    {'location':[33.122334,33.678990],
      'lields':'',
      'timesteps':'',
      'units':'',
      'api':API_KEY
    });

    if (completedCodes.contains(response.statusCode)) {
      streamController.sink.add(WeatherResponse.fromJson(response.data));
    } else {
      throw Exception('${response.statusCode} ${response.statusMessage}');
    }

  }
}