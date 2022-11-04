import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
    static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.indigo,
    fontFamily: GoogleFonts.lato().fontFamily,
    primaryTextTheme: GoogleFonts.latoTextTheme(),
    appBarTheme: AppBarTheme(
      color: Colors.white,
       elevation: 0.0, //shadow under the app bar..
      iconTheme: IconThemeData(color: Colors.black),
    )
);

static ThemeData darkTheme(BuildContext context) => ThemeData( );
}