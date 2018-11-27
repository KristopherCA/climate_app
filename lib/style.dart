import 'package:flutter/material.dart';

TextStyle cityStyle() {
  return
    TextStyle(
      color: Colors.white,
      fontSize: 26.0,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal);

}

TextStyle tempStyle() {
  return
    TextStyle(
      color: Colors.white,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      fontSize: 49.9);
}

TextStyle detailStyle() {
  return
    TextStyle(
        color: Colors.black,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
        fontSize: 25.0);
}
