import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'package:climate_app/carousel.dart';
import 'style.dart';
import 'future.dart';
import 'variables.dart';
import 'api.dart';

class Climates extends StatefulWidget {
  @override
  _ClimatesState createState() => _ClimatesState();
}

class _ClimatesState extends State<Climates> {






  navigate() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailScreen()),


    );

  }





  void searching(value) {

    searchValue = value;
    searchText = searchController.text;


    setState(() {

      void assign() async {
        field = await weatherDetails();
      }


      assign();


      if(searchText != null && searchText.isNotEmpty && searchText.contains(" ")) {
        var splitText = searchText.split(" ");
        var firstString = splitText[0];
        var secondString = splitText[1];
        searchName = firstString[0].toUpperCase() + firstString.substring(1) + " " + secondString[0].toUpperCase() + secondString.substring(1);

      } else {
       if (searchText != null && searchText.isNotEmpty) {
          searchName = searchText[0].toUpperCase() + searchText.substring(1);
        }
      }

      Future<Null>.delayed(Duration(microseconds: 1), () {
        searchController.clear();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("City Climate"),
        ),
        body: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(
                  height: 620.0,
                  width: 500.0,
                  child: carouselSlider,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(55.0),
                  padding: EdgeInsets.only(top: 40.0),
                  child: Center(
                    child: TextField(
                      autocorrect: true,
                      style: cityStyle(),
                      controller: searchController,
                      onSubmitted: searching,
                      decoration: InputDecoration(
                        labelText:"Search for a city",
                        icon: Icon(Icons.search,
                          color: Colors.green,),
                      ),
                    ),
                  )
                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.fromLTRB(0.0, 10.9, 20.9, 0.0),
                  child: searchName == ""
                      ? Text(
                          "",
                          style: cityStyle(),
                        )
                      : Text(
                          "$searchName",
                          style: cityStyle(),
                        ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(0.0, 240.0, 0.0, 0.0),
                    alignment: Alignment.center,
                    child: Image.asset(
                        "images/light_rain.png",
                      ),
                    ),
                Container(
                  margin: EdgeInsets.fromLTRB(30.0,410.0, 0.0, 0.0),
                  alignment: Alignment.bottomCenter,
                  child: searchText == "Fort Myers"
                      ? updateTempWidget("Fort Myers")
                      : updateTempWidget("$searchText"),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.0,525.0, 20.0, 0.0),
                 alignment: Alignment.bottomRight,
                 child:  FloatingActionButton(onPressed: searchName.isEmpty ? null :
                 navigate,
                 tooltip: "Click for Details",
                 foregroundColor: Colors.white,
                 backgroundColor: Colors.green.shade900,
                 child: Container(
                   margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 11.0),
                   alignment: Alignment.center,
                   child: Icon(Icons.details,
                     size: 40.0,),
                 )),
               )
              ],
            ),
          ],
        ));
  }



}
