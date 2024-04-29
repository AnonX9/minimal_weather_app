// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'minimal_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MinimalWeatherImpl _$$MinimalWeatherImplFromJson(Map<String, dynamic> json) =>
    _$MinimalWeatherImpl(
      lon: (json['lon'] as num).toDouble(),
      lat: (json['lat'] as num).toDouble(),
      cityName: json['cityName'] as String,
      temp: (json['temp'] as num).toDouble(),
    );

Map<String, dynamic> _$$MinimalWeatherImplToJson(
        _$MinimalWeatherImpl instance) =>
    <String, dynamic>{
      'lon': instance.lon,
      'lat': instance.lat,
      'cityName': instance.cityName,
      'temp': instance.temp,
    };
