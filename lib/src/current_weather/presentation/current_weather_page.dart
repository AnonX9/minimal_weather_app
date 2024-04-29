import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class CurrentWeatherPage extends StatelessWidget {
  const CurrentWeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = GoogleFonts.bebasNeue(fontSize: 34);

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("city name".toUpperCase(), style: textStyle),
              LottieBuilder.asset("assets/weather-sunny.json"),
              Text("31.5 °C", style: textStyle)
            ],
          ),
        ),
      ),
    );
  }
}
