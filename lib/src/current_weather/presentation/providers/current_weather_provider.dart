import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:minimal_weather_app/src/current_weather/data/models/current_weather.dart';
import 'package:minimal_weather_app/src/current_weather/data/models/minimal_weather.dart';
import 'package:minimal_weather_app/src/current_weather/presentation/providers/current_position_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_weather_provider.g.dart';

@riverpod
class CurrentWeather extends _$CurrentWeather {
  @override
  Future<MinimalWeather> build() async {
    Position position = await ref.watch(currentPositionProvider.future);
    List<Placemark> places =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    String? cityName = places[0].locality;

    MinimalWeather minimalWeather =
        await _getCurrentWeather(position, cityName);

    return minimalWeather;
  }

  Future<MinimalWeather> _getCurrentWeather(
      Position position, String? cityName) async {
    String appId = dotenv.env['APIKEY']!;

    String baseUrl = "https://api.openweathermap.org/data/3.0/onecall";

    Dio dio = Dio(
      BaseOptions(
        queryParameters: {
          'lat': position.latitude,
          'lon': position.longitude,
          'units': 'metric',
          'exclude': 'minutely,hourly,daily,alerts',
          'appid': appId,
        },
      ),
    );

    Response response = await dio.get(baseUrl);

    print('response ${response.data}');

    Weather weather = Weather.fromJson(response.data);

    print("weather : $weather");

    MinimalWeather minimalWeather = weather.toMinimalWeather();
    minimalWeather = minimalWeather.copyWith(cityName: cityName!);

    print("Minimal weather : $minimalWeather");

    return minimalWeather;
  }
}
