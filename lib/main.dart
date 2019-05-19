import 'package:flutter/material.dart';
import 'package:design/pages/home.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    color: Colors.white,
    home: Container(child: Home(), color: Colors.white,),
    theme: ThemeData(
      accentColor: Color(0xff25d366),
      primaryColor: Color(0xff075e54),
    ),
  ));
}



