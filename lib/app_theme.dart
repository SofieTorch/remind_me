import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  final light = ThemeData(
    useMaterial3: true,
    textTheme: GoogleFonts.montserratTextTheme(),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF00CC99),
      primary: const Color(0xFF00CC99),
      secondary: const Color(0xFFFF94C1),
      background: const Color(0xFFFFF7FB),
    ),
  );
}
