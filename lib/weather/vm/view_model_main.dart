import 'package:app/weather/weatherDTO.dart';
import 'package:flutter/cupertino.dart';

import '../../service/ServiceApi.dart';

class ViewModelMain extends ChangeNotifier{
  final ServiceApi serviceApi;
  ViewModelMain(this.serviceApi){
    _init();
  }

  Future<void> _init() async{
    final data = await serviceApi.getDataWeather();
    _state = MainState(data);
    notifyListeners();
  };


}

class MainState {
  WeatherResponse? response;

  MainState(this.response);
  MainState copy({WeatherResponse? response}) => MainState(response ?? this.response);

}

