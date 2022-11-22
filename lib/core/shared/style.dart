import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Style {
  Style._();

  static TextStyle defaultTextStyle = GoogleFonts.poppins(
    fontSize: 14,
    letterSpacing: 1.5,
  );

  static Color primaryColor = const Color(0xff152c5b);
  static Color primaryColorDark = const Color(0xff0e1b29);
  static Color secondaryColor = const Color(0xFF3252df);
  static Color backgroundColor = Colors.white;
  static Color backgroundColorDark = const Color(0xFF12202f);
}
