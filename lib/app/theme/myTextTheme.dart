import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/color.dart';

class MyTextTheme {
  MyTextTheme._();

  static double _getResponsiveFontSize(BuildContext context, double fontSize) {
    final screenWidth = MediaQuery.of(context).size.width;
    return fontSize * screenWidth / 375.0;
  }

  static TextTheme lightTextTheme(BuildContext context) => TextTheme(
        titleLarge: GoogleFonts.lato(
            color: textColor,
            fontSize: _getResponsiveFontSize(context, 34),
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        titleMedium: GoogleFonts.lato(
            color: textColor,
            fontSize: _getResponsiveFontSize(context, 28),
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        titleSmall: GoogleFonts.lato(
            color: textColor,
            fontSize: _getResponsiveFontSize(context, 22),
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        headlineLarge: GoogleFonts.lato(
            color: textColor,
            fontSize: _getResponsiveFontSize(context, 28),
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        headlineMedium: GoogleFonts.lato(
            color: textColor,
            fontSize: _getResponsiveFontSize(context, 22),
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        headlineSmall: GoogleFonts.lato(
            color: textColor,
            fontSize: _getResponsiveFontSize(context, 18),
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        displayLarge: GoogleFonts.lato(
            color: textColor,
            fontSize: _getResponsiveFontSize(context, 34),
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        displayMedium: GoogleFonts.lato(
            color: textColor,
            fontSize: _getResponsiveFontSize(context, 28),
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        displaySmall: GoogleFonts.lato(
            color: textColor,
            fontSize: _getResponsiveFontSize(context, 22),
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        labelLarge: GoogleFonts.lato(
            color: textColor,
            fontSize: _getResponsiveFontSize(context, 18),
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        labelMedium: GoogleFonts.lato(
            color: textColor,
            fontSize: _getResponsiveFontSize(context, 16),
            fontWeight: FontWeight.w500,
            letterSpacing: 0),
        labelSmall: GoogleFonts.lato(
            color: textColor,
            fontSize: _getResponsiveFontSize(context, 14),
            fontWeight: FontWeight.w500,
            letterSpacing: 0),
      );

  static TextTheme darkTextTheme(BuildContext context) => TextTheme(
        titleLarge: GoogleFonts.lato(
            color: textDarkColor,
            fontSize: _getResponsiveFontSize(context, 34),
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        titleMedium: GoogleFonts.lato(
            color: textDarkColor,
            fontSize: _getResponsiveFontSize(context, 28),
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        titleSmall: GoogleFonts.lato(
            color: textDarkColor,
            fontSize: _getResponsiveFontSize(context, 22),
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        headlineLarge: GoogleFonts.lato(
            color: textDarkColor,
            fontSize: _getResponsiveFontSize(context, 28),
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        headlineMedium: GoogleFonts.lato(
            color: textDarkColor,
            fontSize: _getResponsiveFontSize(context, 22),
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        headlineSmall: GoogleFonts.lato(
            color: textDarkColor,
            fontSize: _getResponsiveFontSize(context, 18),
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        displayLarge: GoogleFonts.lato(
            color: textDarkColor,
            fontSize: _getResponsiveFontSize(context, 34),
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        displayMedium: GoogleFonts.lato(
            color: textDarkColor,
            fontSize: _getResponsiveFontSize(context, 28),
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        displaySmall: GoogleFonts.lato(
            color: textDarkColor,
            fontSize: _getResponsiveFontSize(context, 22),
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
        labelMedium: GoogleFonts.lato(
            color: textDarkColor,
            fontSize: _getResponsiveFontSize(context, 16),
            fontWeight: FontWeight.w500,
            letterSpacing: 0),
        labelSmall: GoogleFonts.lato(
            color: textDarkColor,
            fontSize: _getResponsiveFontSize(context, 14),
            fontWeight: FontWeight.w500,
            letterSpacing: 0),
        labelLarge: GoogleFonts.lato(
            color: textDarkColor,
            fontSize: _getResponsiveFontSize(context, 18),
            fontWeight: FontWeight.w600,
            letterSpacing: 0),
      );
}
