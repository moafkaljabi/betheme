import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {

  static TextTheme lightTextTheme = TextTheme(
    displayMedium:GoogleFonts.montserrat(
      color: Colors.black87, 
      fontSize:40,
      //fontWeight: FontWeight.bold
      ),
    displaySmall:GoogleFonts.poly(
      fontWeight: FontWeight.bold,
      color: Colors.black87, 
      fontSize: 25)
       );

    static TextTheme darkTexTheme = TextTheme(
      displayMedium: GoogleFonts.montserrat(
       // fontWeight: FontWeight.bold,
        color:Colors.white,
        fontSize: 40),
      displaySmall: GoogleFonts.poly(
        fontWeight: FontWeight.bold,
        color: Colors.white , 
        fontSize: 25),
    );
}