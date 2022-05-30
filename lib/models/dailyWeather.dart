import 'package:flutter/cupertino.dart';

class DailyWeather with ChangeNotifier {
  var dailyTemp;
  var condition;
  var date;
  var precip;
  var uvi;
  var humidity;
  var windspeed;

  DailyWeather({
    this.dailyTemp,
    this.condition,
    this.date,
    this.precip,
    this.uvi,
    this.humidity,
    this.windspeed,
  });

  factory DailyWeather.fromJson(Map<String, dynamic> json) {
    final precipData = json['daily'][0]['pop'];
    final calcPrecip = precipData * 100;
    final precipitation = calcPrecip.toStringAsFixed(0);
    return DailyWeather(
      precip: precipitation,
      uvi: json['daily'][0]['uvi'],
      humidity: json['daily'][0]['humidity'],
      windspeed: json['daily'][0]['wind_speed'],
    );
  }

  static DailyWeather fromDailyJson(dynamic json) {
    return DailyWeather(
      dailyTemp: json['temp']['day'],
      condition: json['weather'][0]['main'],
      date: DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000, isUtc: true),
    );
  }

  static DailyWeather fromHourlyJson(dynamic json) {
    return DailyWeather(
      dailyTemp: json['temp'],
      condition: json['weather'][0]['main'],
      date: DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000),
    );
  }
}