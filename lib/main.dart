import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minimal_weather_app/src/current_weather/presentation/current_weather_page.dart';

void main() async {
  await dotenv.load(fileName: ".env");

  runApp(
    ProviderScope(
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minima Weather',
      theme: FlexThemeData.light(
          scheme: FlexScheme.damask,
          useMaterial3: true,
          fontFamily: "BebasNeue"),
      darkTheme: FlexThemeData.dark(
          scheme: FlexScheme.bigStone,
          useMaterial3: true,
          fontFamily: "BebasNeue"),
      themeMode: ThemeMode.system,
      home: const CurrentWeatherPage(),
    );
  }
}
