// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weatherDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) =>
    WeatherResponse(
      data: json['data'] == null
          ? null
          : WeatherData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherResponseToJson(WeatherResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) => WeatherData(
      timelines: (json['timelines'] as List<dynamic>?)
          ?.map((e) => Timeline.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeatherDataToJson(WeatherData instance) =>
    <String, dynamic>{
      'timelines': instance.timelines,
    };

Timeline _$TimelineFromJson(Map<String, dynamic> json) => Timeline(
      endTime: json['endTime'] as String?,
      intervals: (json['intervals'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Interval.fromJson(e as Map<String, dynamic>))
          .toList(),
      startTime: json['startTime'] as String?,
      timestep: json['timestep'] as String?,
    );

Map<String, dynamic> _$TimelineToJson(Timeline instance) => <String, dynamic>{
      'endTime': instance.endTime,
      'intervals': instance.intervals,
      'startTime': instance.startTime,
      'timestep': instance.timestep,
    };

Interval _$IntervalFromJson(Map<String, dynamic> json) => Interval(
      startTime: json['startTime'] as String?,
      values: json['values'] == null
          ? null
          : Values.fromJson(json['values'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntervalToJson(Interval instance) => <String, dynamic>{
      'startTime': instance.startTime,
      'values': instance.values,
    };

Values _$ValuesFromJson(Map<String, dynamic> json) => Values(
      temperature: (json['temperature'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ValuesToJson(Values instance) => <String, dynamic>{
      'temperature': instance.temperature,
    };
