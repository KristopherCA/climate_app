import 'package:flutter/material.dart';
import 'package:climate_app/climate_screen.dart';

main() => runApp(Climate());

class Climate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.green.shade900,
          accentColor: Colors.white,
          hintColor: Colors.white,
          buttonColor: Colors.green,
          textSelectionColor: Colors.white),
      home: Climates(),
    );
  }
}
