import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


var carouselSlider = Carousel(
    showIndicator: false,
    autoplay: true,
    autoplayDuration: Duration(seconds: 3),
    animationDuration: Duration(microseconds: 1),
    animationCurve: Curves.easeInOut,
    images: [

      ExactAssetImage("images/umbrella.png",),
      ExactAssetImage("images/clouds.jpg"),
      ExactAssetImage("images/lightning.jpg"),
      ExactAssetImage("images/nasa.jpg"),
      ExactAssetImage("images/mountain.jpg"),
      ExactAssetImage("images/snow.jpg")

  ]
);


