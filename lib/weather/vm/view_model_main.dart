import 'package:app/service/ServiceApiDioImpl.dart';
import 'package:app/service/serviceApiWeather.dart';
import 'package:app/weather/weatherDTO.dart';
import 'package:flutter/cupertino.dart';
import '../../service/ServiceApi.dart';

class ViewModelMain extends ChangeNotifier{
  final ServiceApiWeather serviceApi;
  MainState? _state;
  MainState? get currentState => _state;

  ViewModelMain(this.serviceApi){
    _init();
  }

  Future<void> _init() async{
    _state = MainState(response: null, isLoading: LoadingState.loading);
    final data = await serviceApi.getDataWeather();
    _state = MainState(response: data, isLoading: LoadingState.initial);
    notifyListeners();
  }

}

class MainState {
  LoadingState? isLoading;
  WeatherResponse? response;

  MainState({this.response,this.isLoading});
  MainState copy({WeatherResponse? response, LoadingState? isLoading}) => MainState(response: response ?? this.response,isLoading: isLoading ?? this.isLoading);

}

enum LoadingState{
  initial,
  loading,
  error
}