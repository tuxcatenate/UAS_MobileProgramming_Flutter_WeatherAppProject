import 'package:flutter/material.dart';
import 'package:flutter_weather/Screens/homeScreen.dart';
import 'package:flutter_weather/widgets/weatherDetail.dart';
import 'package:intl/intl.dart';
import '../provider/weatherProvider.dart';

import '../helper/utils.dart';

class MainWeather extends StatelessWidget {
  final wData;

  MainWeather({this.wData});

  final TextStyle _style1 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20,
  );
  final TextStyle _style2 = TextStyle(
    fontWeight: FontWeight.w400,
    color: Colors.grey[700],
    fontSize: 16,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
      height: MediaQuery.of(context).size.height / 3.4,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: [
          Container(
              alignment: Alignment
                  .center, //diset ke center juga untuk alignment nya(tengah)
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 5, right: 10, top: 5),
                  child: SizedBox(
                      height: 15,
                      child: Text(
                        DateFormat.E().format(DateTime.now()),
                        style: _style2,
                      )))),
          Container(
            //padding: EdgeInsets.all(10),
            //535180008 - menambahkan button di dalam container, container ditambahkan dibawah children dari listview agar
            //bisa dikelompokkan ke dalam tampilan bagian atas
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 20,
              child: IconButton(
                  icon: Icon(
                    Icons.info_rounded,
                  ),
                  iconSize: 50,
                  tooltip: "weather",
                  color: Colors.green,
                  splashColor: Colors.purple,
                  onPressed: () {
                    //(535180008)
                    //page route diarahkan ke halaman baru, halaman yang dimaksud adalah halaman baru untuk menampilkan informasi detil
                    //dari today weather, data diambil dari codingan diatas saja dan disupply ke parameter wData, agar tidak muncul error
                    //pada saat button di-klik
                    //tidak menggunakan pushhnamed karena untuk mereplace keseleruhan screen halaman baru dengan platform-adaptive transition
                    //referensi : https://api.flutter.dev/flutter/material/MaterialPageRoute-class.html
                    //Navigator.of(context).pushNamed(WeatherDetail.routeName);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WeatherDetail(wData: wData)));
                    /*
                  Navigator.push(
                    context,
                    // DetailPage adalah halaman yang dituju
                    MaterialPageRoute(
                        builder: (context) => WeatherDetail(
                            //title: title,
                            //desc: desc,
                            )),
                  );*/
                  }),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start, //center untuk ke tengah
            children: [
              Icon(Icons.location_on_outlined),
              Text('${wData.weather.cityName}', style: _style1),
            ],
          ),
          /*
          SizedBox(height: 5),
          Text(
            DateFormat.E().format(DateTime.now()),
            style: _style2,
          ),*/
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment
                .start, //kalau di set ke centered, akan ke tengah , ada opsi lain yaitu .end(535180008)
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15, right: 25),
                child: MapString.mapStringToIcon(
                    '${wData.weather.currently}', context, 55),
              ),
              Text(
                '${wData.weather.temp.toStringAsFixed(0)}°C',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            //535180008 - mengubah tampilan teks ke tampilan min dan maksimal saja
            //'${wData.weather.tempMax.toStringAsFixed(0)}°/ ${wData.weather.tempMin.toStringAsFixed(0)}° Feels like ${wData.weather.feelsLike.toStringAsFixed(0)}°',
            'Max temp: ${wData.weather.tempMax.toStringAsFixed(0)}°/ Min temp: ${wData.weather.tempMin.toStringAsFixed(0)}°',
            style: _style1.copyWith(fontSize: 17),
          ),
          SizedBox(height: 5),
          Text(
            toBeginningOfSentenceCase('${wData.weather.description}'),
            style: _style1.copyWith(fontSize: 17),
          ),
        ],
      ),
    );
  }
}
