import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:minimal_weather_app/src/current_weather/presentation/providers/current_weather_provider.dart';

import '../data/models/minimal_weather.dart';

class CurrentWeatherPage extends ConsumerWidget {
  const CurrentWeatherPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextStyle textStyle = GoogleFonts.bebasNeue(fontSize: 34);
    final currentWeather = ref.watch(currentWeatherProvider.notifier);

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80),
          child: FutureBuilder(
            future: currentWeather.build(),
            builder:
                (BuildContext context, AsyncSnapshot<MinimalWeather> snapshot) {
              if (!snapshot.hasData) {
                return const CircularProgressIndicator();
              } else {
                var data = snapshot.data;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(data!.cityName.toUpperCase(), style: textStyle),
                    LottieBuilder.asset("assets/weather-sunny.json"),
                    Text("${data.temp} °C", style: textStyle)
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
