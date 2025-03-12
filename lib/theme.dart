import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme(
    primary: Color(0xFF4B986C),
    secondary: Color(0xFF928163),
    tertiary: Color(0xFF6D604A),
    surface: Color(0xFFFFFFFF),
    onPrimary: Color(0xFFFFFFFF),
    onSecondary: Color(0xFF0B191E),
    onSurface: Color(0xFF384E58),
    brightness: Brightness.light,
    error: Colors.red,
    onError: Colors.white,
  ),
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.urbanist(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Color(0xFF0B191E),
    ),
    bodyLarge: GoogleFonts.plusJakartaSans(
      fontSize: 16,
      color: Color(0xFF384E58),
    ),
    labelLarge: GoogleFonts.urbanist(fontSize: 14, color: Color(0xFF0B191E)),
  ),
  scaffoldBackgroundColor: Color(0xFFF1F4F8),
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFF4B986C),
    titleTextStyle: GoogleFonts.urbanist(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Color(0xFFFFFFFF),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFF4B986C),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    ),
  ),
);
