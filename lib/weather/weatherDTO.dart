import 'package:json_annotation/json_annotation.dart';
part 'weatherDTO.g.dart';

@JsonSerializable()
class WeatherResponse {
    WeatherData? data;

    WeatherResponse({this.data});

  factory WeatherResponse.fromJson(Map<String, dynamic> json) => _$WeatherResponseFromJson(json);
}

@JsonSerializable()
class WeatherData {
    List<Timeline>? timelines;

    WeatherData({required this.timelines});

    factory WeatherData.fromJson(Map<String, dynamic> json) => _$WeatherDataFromJson(json);
}

@JsonSerializable()
class Timeline {
    String? endTime;
    List<Interval?>? intervals;
    String? startTime;
    String? timestep;

    Timeline({this.endTime, this.intervals, this.startTime, this.timestep});

    factory Timeline.formJson(Map<String, dynamic> json) => _$TimelineFromJson(json);
}

@JsonSerializable()
class Interval {
    String? startTime;
    Values? values;

    Interval({required this.startTime, required this.values});

    factory Interval.fromJson(Map<String, dynamic> json) => _$IntervalFromJson(json);
}

@JsonSerializable()
class Values {
    double? temperature;

    Values({required this.temperature});
    factory Values.fromJson(Map<String, dynamic> json) => _$ValuesFromJson(json);
}