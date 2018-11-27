import 'package:flutter/material.dart';
import 'api.dart';
import 'style.dart';
import 'variables.dart';



Widget updateTempWidget(String city) {
  return FutureBuilder(
      future: getWeather(apiKey, city),
      builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
        Map content = snapshot.data;
        if (snapshot.hasData && city != null && city == content['name']  ) {
          return Container(
            padding: EdgeInsets.only(top: 10.0, left: 110.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ListTile(
                  title: Text(
                    content['main']['temp'].toStringAsFixed(0) + "°F",
                    style: tempStyle(),
                  ),
                )
              ],
            ),
          );
        } else {



          searchName = " ";
          searchText = " ";
          return Container();

        }
      });
}