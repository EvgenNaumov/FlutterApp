import 'package:app/service/ServiceApi.dart';
import 'package:dio/dio.dart';

import '../util.dart';
import '../weather/weatherDTO.dart';

class ServiceApiWeather extends ServiceApi{

  final Dio client = Dio();

  @override
  Future<WeatherResponse> getDataWeather() async {
    var response = await client.get('$BASE_URL$DOMEN_URL',queryParameters:
    {'location':[33.122334,33.678990],
      'fields':'',
      'timesteps':'',
      'units':'',
      'api':API_KEY
    });

    if (completedCodes.contains(response.statusCode)) {
      return WeatherResponse.fromJson(response.data);
    } else {
      throw Exception('${response.statusCode} ${response.statusMessage}');
    }
  }

}