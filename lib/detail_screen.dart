import 'package:flutter/material.dart';
import 'api.dart';
import 'style.dart';
import 'variables.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      backgroundColor: Colors.greenAccent.shade50,
      body: GridView.count(
        crossAxisSpacing: 3.0,
          crossAxisCount: 2,
      children: <Widget>[
        ListTile(
          title: Text(
          " Temperature: ${field['main']['temp'].toStringAsFixed(0)}" + "°F",
  style: detailStyle(),
          ),
        ),
        ListTile(
          title: Text(
            "Pressure: ${field['main']['pressure']} PSI".toString(),
            style: detailStyle(),
          ),
        ),
        ListTile(
          title: Text(
            "Humidity: ${field['main']['humidity']} %".toString(),
            style: detailStyle(),
          ),
        ),
        ListTile(
          title: Text(
            "Wind Speed: ${field['wind']['speed']} Mph".toString(),
            style: detailStyle(),
          ),
        ),
        ListTile(
          title: Text(
            "Latitude:  ${field['coord']['lat'].toStringAsFixed(0)}"+ "°",
            style: detailStyle(),
          ),
        ),
        ListTile(
          title: Text(
            "Longitude: ${field['coord']['lon'].toStringAsFixed(0)}"+ "°",
            style: detailStyle(),
          ),
        )

      ],),
    );
  }
}
