import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    titleLarge: GoogleFonts.montserrat(
      color: Colors.black87,
      fontWeight: FontWeight.bold,
      fontSize: 30.0,
    ),
    titleMedium: GoogleFonts.montserrat(
      color: Colors.black54,
      fontSize: 24.0,
    ),
    headlineMedium: GoogleFonts.montserrat(
      color: Colors.black87,
    ),
    labelMedium: GoogleFonts.poppins(
      color: Colors.black54,
      fontSize: 24,
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineMedium: GoogleFonts.montserrat(
      color: Colors.white70,
    ),
    labelMedium: GoogleFonts.poppins(
      color: Colors.white60,
      fontSize: 24,
    ),
  );
}
