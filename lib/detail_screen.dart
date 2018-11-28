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
      padding: EdgeInsets.all(5.0),
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title: Text("Temperature",
              style: titleStyle(),),
            ),
            ListTile(
              title: Text(  "${field['main']['temp'].toStringAsFixed(0)}" + "°F",
              style: detailStyle(),
              ),
            )
          ],
        ),
       Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           ListTile(
             title: Text("Pressure",
               style: titleStyle(),),
           ),
           ListTile(
             title: Text(
               "${field['main']['pressure']} Psi".toString(),
               style: detailStyle(),
             ),
           ),
         ],
       ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title: Text("Humidity",
                style: titleStyle(),),
            ),
            ListTile(
              title: Text(
                "${field['main']['humidity']} %".toString(),
                style: detailStyle(),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title: Text("Wind Speed",
                style: titleStyle(),),
            ),
            ListTile(
              title: Text(
                "${field['wind']['speed']} %".toString(),
                style: detailStyle(),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title: Text("Latitude",
                style: titleStyle(),),
            ),
            ListTile(
              title: Text(
                "${field['coord']['lat']} °".toString(),
                style: detailStyle(),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title: Text("Longitude",
                style: titleStyle(),),
            ),
            ListTile(
              title: Text(
                "${field['coord']['lon']} °".toString(),
                style: detailStyle(),
              ),
            ),
          ],
        ),

      ],),
    );
  }
}
