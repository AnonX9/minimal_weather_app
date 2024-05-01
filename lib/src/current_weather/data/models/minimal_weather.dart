import 'package:freezed_annotation/freezed_annotation.dart';

part 'minimal_weather.freezed.dart';
part 'minimal_weather.g.dart';

@freezed
class MinimalWeather with _$MinimalWeather {
  const factory MinimalWeather({
    required double lon,
    required double lat,
    required String cityName,
    required double temp,
    required String main,
  }) = _MinimalWeather;

  factory MinimalWeather.fromJson(Map<String, dynamic> json) =>
      _$MinimalWeatherFromJson(json);
}
