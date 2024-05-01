// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'minimal_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MinimalWeather _$MinimalWeatherFromJson(Map<String, dynamic> json) {
  return _MinimalWeather.fromJson(json);
}

/// @nodoc
mixin _$MinimalWeather {
  double get lon => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  String get cityName => throw _privateConstructorUsedError;
  double get temp => throw _privateConstructorUsedError;
  String get main => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinimalWeatherCopyWith<MinimalWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinimalWeatherCopyWith<$Res> {
  factory $MinimalWeatherCopyWith(
          MinimalWeather value, $Res Function(MinimalWeather) then) =
      _$MinimalWeatherCopyWithImpl<$Res, MinimalWeather>;
  @useResult
  $Res call(
      {double lon, double lat, String cityName, double temp, String main});
}

/// @nodoc
class _$MinimalWeatherCopyWithImpl<$Res, $Val extends MinimalWeather>
    implements $MinimalWeatherCopyWith<$Res> {
  _$MinimalWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lon = null,
    Object? lat = null,
    Object? cityName = null,
    Object? temp = null,
    Object? main = null,
  }) {
    return _then(_value.copyWith(
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MinimalWeatherImplCopyWith<$Res>
    implements $MinimalWeatherCopyWith<$Res> {
  factory _$$MinimalWeatherImplCopyWith(_$MinimalWeatherImpl value,
          $Res Function(_$MinimalWeatherImpl) then) =
      __$$MinimalWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double lon, double lat, String cityName, double temp, String main});
}

/// @nodoc
class __$$MinimalWeatherImplCopyWithImpl<$Res>
    extends _$MinimalWeatherCopyWithImpl<$Res, _$MinimalWeatherImpl>
    implements _$$MinimalWeatherImplCopyWith<$Res> {
  __$$MinimalWeatherImplCopyWithImpl(
      _$MinimalWeatherImpl _value, $Res Function(_$MinimalWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lon = null,
    Object? lat = null,
    Object? cityName = null,
    Object? temp = null,
    Object? main = null,
  }) {
    return _then(_$MinimalWeatherImpl(
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MinimalWeatherImpl implements _MinimalWeather {
  const _$MinimalWeatherImpl(
      {required this.lon,
      required this.lat,
      required this.cityName,
      required this.temp,
      required this.main});

  factory _$MinimalWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$MinimalWeatherImplFromJson(json);

  @override
  final double lon;
  @override
  final double lat;
  @override
  final String cityName;
  @override
  final double temp;
  @override
  final String main;

  @override
  String toString() {
    return 'MinimalWeather(lon: $lon, lat: $lat, cityName: $cityName, temp: $temp, main: $main)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinimalWeatherImpl &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.main, main) || other.main == main));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lon, lat, cityName, temp, main);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MinimalWeatherImplCopyWith<_$MinimalWeatherImpl> get copyWith =>
      __$$MinimalWeatherImplCopyWithImpl<_$MinimalWeatherImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MinimalWeatherImplToJson(
      this,
    );
  }
}

abstract class _MinimalWeather implements MinimalWeather {
  const factory _MinimalWeather(
      {required final double lon,
      required final double lat,
      required final String cityName,
      required final double temp,
      required final String main}) = _$MinimalWeatherImpl;

  factory _MinimalWeather.fromJson(Map<String, dynamic> json) =
      _$MinimalWeatherImpl.fromJson;

  @override
  double get lon;
  @override
  double get lat;
  @override
  String get cityName;
  @override
  double get temp;
  @override
  String get main;
  @override
  @JsonKey(ignore: true)
  _$$MinimalWeatherImplCopyWith<_$MinimalWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
