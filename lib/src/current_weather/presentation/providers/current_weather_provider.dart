import 'package:geolocator/geolocator.dart';
import 'package:minimal_weather_app/src/current_weather/presentation/providers/current_position_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_weather_provider.g.dart';

@riverpod
class CurrentWeather extends _$CurrentWeather {
  late Position position;
  @override
  build() async {
    position = await ref.watch(currentPositionProvider.future);
  }

  _getCurrentWeather() {

  }
}
