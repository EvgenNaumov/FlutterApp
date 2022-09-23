import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class WeatherResponse {
    WeatherData? data;
    WeatherResponse({required this.data});
}

@JsonSerializable()
class WeatherData {
    List<Timeline>? timelines;
    WeatherData({required this.timelines});
}

@JsonSerializable()
class Timeline {
    String? endTime;
    List<Interval?>? intervals;
    String? startTime;
    String? timestep;

    Timeline({this.endTime, this.intervals, this.startTime, this.timestep});

}

@JsonSerializable()
class Interval {
    String? startTime;
    Values? values;

    Interval({required this.startTime, required this.values});

}

@JsonSerializable()
class Values {
    double? temperature;

    Values({required this.temperature});

}