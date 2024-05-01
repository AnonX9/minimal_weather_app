import 'package:freezed_annotation/freezed_annotation.dart';

import 'minimal_weather.dart';

part 'current_weather.freezed.dart';
part 'current_weather.g.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    double? lat,
    double? lon,
    String? timezone,
    int? timezoneOffset,
    Current? current,
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
    int? dt,
    int? sunrise,
    int? sunset,
    double? temp,
    double? feelsLike,
    int? pressure,
    int? humidity,
    double? dewPoint,
    double? uvi,
    int? clouds,
    int? visibility,
    double? windSpeed,
    int? windDeg,
    double? windGust,
    List<WeatherElement>? weather,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}

@freezed
class WeatherElement with _$WeatherElement {
  const factory WeatherElement({
    int? id,
    String? main,
    String? description,
    String? icon,
  }) = _WeatherElement;

  factory WeatherElement.fromJson(Map<String, dynamic> json) =>
      _$WeatherElementFromJson(json);
}
