import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PorfolioTheme {

  static final ThemeData  myTheme =  ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Color(0xff6b559e),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.white,
      focusColor: Colors.green,
      highlightColor: Colors.green
    ),
    useMaterial3: true,
    textTheme: GoogleFonts.youngSerifTextTheme()
    // backgroundColor: Colors.white,
    // accentColor: Colors.green,
    // buttonColor: Colors.blue,
    // textTheme: TextTheme(
    //   headline6: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    //   bodyText2: TextStyle(fontSize: 16.0),
    // ),
  );
}