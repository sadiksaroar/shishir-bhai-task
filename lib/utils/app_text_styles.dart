import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle heading = GoogleFonts.mulish(
    color: const Color(0xFF354259),
    fontSize: 19,
    fontWeight: FontWeight.w700,
    height: 1.16,
  );
  static TextStyle highlightHeading = GoogleFonts.mulish(
    color: const Color(0xFF2A9B80),
    fontSize: 19,
    fontWeight: FontWeight.w800,
    height: 1.16,
  );
  static TextStyle whiteBold18 = GoogleFonts.mulish(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w800,
    letterSpacing: 0.60,
  );
  static TextStyle whiteExtraBold14 = GoogleFonts.mulish(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w900,
  );
  static TextStyle whiteBold14 = GoogleFonts.mulish(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static TextStyle darkExtraBold17 = GoogleFonts.mulish(
    color: const Color(0xFF354259),
    fontSize: 17,
    fontWeight: FontWeight.w800,
  );
  static TextStyle accentExtraBold14 = GoogleFonts.mulish(
    color: const Color(0xFF2A9B80),
    fontSize: 14,
    fontWeight: FontWeight.w900,
    height: 1.14,
    letterSpacing: 0.40,
  );
}
