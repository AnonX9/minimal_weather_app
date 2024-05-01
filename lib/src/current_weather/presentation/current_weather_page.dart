import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';
import 'package:minimal_weather_app/src/current_weather/presentation/providers/current_weather_provider.dart';

class CurrentWeatherPage extends ConsumerWidget {
  const CurrentWeatherPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextStyle textStyle = TextStyle(fontSize: 34);
    final currentWeather = ref.watch(currentWeatherProvider.notifier).build();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
      body: Center(
        child: RefreshIndicator(
          onRefresh: () => ref.refresh(currentWeatherProvider.future),
          child: ListView(
            shrinkWrap: true,
            children: [
              Center(
                child: FutureBuilder(
                  future: currentWeather,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return LoadingAnimationWidget.stretchedDots(
                          color: Colors.blue, size: 64);
                    } else {
                      var data = snapshot.data;
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(data!.cityName.toUpperCase(), style: textStyle),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 80),
                            child: LottieBuilder.asset(
                              getWeatherAnimation(data.main.toLowerCase()),
                            ),
                          ),
                          Text("${data.temp} °C", style: textStyle)
                        ],
                      );
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  getWeatherAnimation(String? condition) {
    print("main : $condition");

    if (condition == null) return 'assets/sunny.json';

    switch (condition) {
      case 'clouds':
      case 'smoke':
      case 'haze':
      case 'dust':
      case 'fog':
        return 'assets/clouds.json';
      case 'rain':
      case 'drizzle':
      case 'shower rain':
        return 'assets/rain.json';
      case 'thunderstorm':
        return 'assets/thunderstorm.json';
      case 'clear':
      default:
        return 'assets/sunny.json';
    }
  }
}
