import 'package:flutter/material.dart';
import 'package:flutter_weather_icons/flutter_weather_icons.dart';

import '../helper/utils.dart';

class WeatherInfo extends StatelessWidget {
  final wData;
  WeatherInfo({this.wData});

  Widget _weatherInfoBuilder(String header, String body, IconData icon,
      double rightPad, double iconSize) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 15, right: rightPad),
            child: Icon(
              icon,
              color: Colors.blue,
              size: iconSize,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                child: Text(
                  header,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
              ),
              FittedBox(
                child: Text(
                  body,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      height: MediaQuery.of(context).size.height / 6,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.deepOrange.shade100,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              blurRadius: 15,
              offset: Offset(6, 8),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: _weatherInfoBuilder(
                'Wind Speed',
                '${wData.windspeed} m/s',
                WeatherIcons.wiStrongWind,
                15,
                30,
              ),
            ),
            /*
            VerticalDivider(
              color: Colors.black,
              indent: 25,
              endIndent: 25,
            )*/
            SizedBox(
              child: _weatherInfoBuilder(
                'Humidity',
                //UvIndex.mapUviValueToString(uvi: wData.uvi),
                '${wData.humidity}%',
                WeatherIcons.wiRain,
                15,
                30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
