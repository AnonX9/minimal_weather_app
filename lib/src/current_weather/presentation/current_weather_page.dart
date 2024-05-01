import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:minimal_weather_app/src/current_weather/presentation/providers/current_weather_provider.dart';

class CurrentWeatherPage extends ConsumerWidget {
  const CurrentWeatherPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextStyle textStyle = GoogleFonts.bebasNeue(fontSize: 34);
    final currentWeather = ref.watch(currentWeatherProvider.notifier).build();

    return Scaffold(
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
                      return const CircularProgressIndicator();
                    } else {
                      var data = snapshot.data;
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(data!.cityName.toUpperCase(), style: textStyle),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 80),
                            child: LottieBuilder.asset(
                                "assets/weather-sunny.json"),
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
}
