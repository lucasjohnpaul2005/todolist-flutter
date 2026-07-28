import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Palette ported 1:1 from the web app's app.css :root variables.
class AppColors {
  static const primary = Color(0xFFE8622C);
  static const primaryDark = Color(0xFFC94E1E);
  static const secondary = Color(0xFF1F6F5C);
  static const secondaryDark = Color(0xFF16543F);
  static const danger = Color(0xFFE5484D);
  static const success = Color(0xFF2F9E6E);
  static const warning = Color(0xFFD99A3D);

  static const ink900 = Color(0xFF191B21);
  static const ink800 = Color(0xFF23262F);
  static const ink700 = Color(0xFF2D303B);

  static const gray50 = Color(0xFFF9F8F6);
  static const gray100 = Color(0xFFF2F0EB);
  static const gray200 = Color(0xFFE4E1D9);
  static const gray300 = Color(0xFFCFCABD);
  static const gray400 = Color(0xFFA39C8B);
  static const gray500 = Color(0xFF7D7565);
  static const gray600 = Color(0xFF5A5347);
  static const gray700 = Color(0xFF3F3A31);
  static const gray800 = Color(0xFF29261F);
  static const gray900 = Color(0xFF17140F);

  static const paper = Color(0xFFFFFDFA);
}

class AppTheme {
  static ThemeData get light {
    final displayFont = GoogleFonts.frauncesTextTheme();
    final bodyFont = GoogleFonts.interTextTheme();

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.ink900,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        error: AppColors.danger,
        surface: AppColors.paper,
      ),
      textTheme: bodyFont.copyWith(
        headlineLarge: displayFont.headlineLarge
            ?.copyWith(fontWeight: FontWeight.w600, color: AppColors.gray900),
        headlineMedium: displayFont.headlineMedium
            ?.copyWith(fontWeight: FontWeight.w600, color: AppColors.gray900),
        titleLarge: displayFont.titleLarge
            ?.copyWith(fontWeight: FontWeight.w600, color: AppColors.gray900),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.white,
        titleTextStyle: GoogleFonts.fraunces(
            fontSize: 26, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: GoogleFonts.inter(fontWeight: FontWeight.w600),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.gray200, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.gray200, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
      ),
    );
  }
}
