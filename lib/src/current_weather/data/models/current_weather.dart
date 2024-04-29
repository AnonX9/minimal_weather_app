import 'package:freezed_annotation/freezed_annotation.dart';

import 'minimal_weather.dart';

part 'current_weather.freezed.dart';
part 'current_weather.g.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required double lat,
    required double lon,
    required String timezone,
    required int timezoneOffset,
    required Current current,
  }) = _Weather;

  MinimalWeather toMinimalWeather() {
    throw UnimplementedError();
  }

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@freezed
class Current with _$Current {
  const factory Current({
    required int dt,
    required int sunrise,
    required int sunset,
    required double temp,
    required double feelsLike,
    required int pressure,
    required int humidity,
    required double dewPoint,
    required double uvi,
    required int clouds,
    required int visibility,
    required double windSpeed,
    required int windDeg,
    required double windGust,
    required List<WeatherElement> weather,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}

@freezed
class WeatherElement with _$WeatherElement {
  const factory WeatherElement({
    required int id,
    required String main,
    required String description,
    required String icon,
  }) = _WeatherElement;

  factory WeatherElement.fromJson(Map<String, dynamic> json) =>
      _$WeatherElementFromJson(json);
}
