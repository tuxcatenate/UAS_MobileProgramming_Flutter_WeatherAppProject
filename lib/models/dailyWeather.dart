import 'package:flutter/cupertino.dart';

class DailyWeather with ChangeNotifier {
  var dailyTemp;
  var condition;
  var date;
  var precip;
  var uvi;
  //tambahkan variabel humid&wind sebagai penampung dan dapat diakses di weatherInfo.dart(535180008)
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
      //tambah windspeed dan humidity, ambil dari index yang sudah direturn dari API openweather (535180008)
      //API yang sempat dicoba : https://api.openweathermap.org/data/2.5/onecall?lat=-6.200000&lon=106.816666&units=metric&exclude=minutely,current&appid=b41597da057bd11760fd724ae4bee03a
      //API tersebut merujuk pada lokasi jakarta sesuai latitude dan longitude
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
