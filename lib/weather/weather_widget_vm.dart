import 'package:app/service/ServiceApiDioImpl.dart';
import 'package:app/service/serviceApiWeather.dart';
import 'package:app/weather/vm/view_model_main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WeatherStateWidget extends StatelessWidget {
  const WeatherStateWidget({Key? key}) : super(key: key);

  static Widget create(ServiceApiWeather serviceApi) {
    return ChangeNotifierProvider(
      child: const WeatherStateWidget(),
      create: (context) => ViewModelMain(serviceApi),
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = context.read<ViewModelMain>();
    return Scaffold(
      appBar: AppBar(
        title: Text('weather'),
      ),
      body: Center(
        child: context.watch<ViewModelMain>().currentState?.isLoading == LoadingState.loading ?
        const SizedBox(
          height: 40,
          width: 40,
          child: CircularProgressIndicator(color: Colors.black,),
        )
            : Text(context.watch<ViewModelMain>().currentState?.response?.data?.timelines?.first.timestep??'',
          style: const TextStyle(color: Colors.deepOrange),),

      ),
    );
  }
}
