import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medimate/Core/utils/constants.dart';

class AppTheme {
  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColorLight,
    scaffoldBackgroundColor: AppColors.backgroundColorLight,
    cardColor: AppColors.cardColorLight,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryColorLight,
      secondary: AppColors.secondaryColorLight,
      tertiary: AppColors.accentColorLight,
      surface: AppColors.cardColorLight,
      background: AppColors.backgroundColorLight,
      error: AppColors.wrongAnswerColor,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: AppColors.textColorLight,
      onBackground: AppColors.textColorLight,
      onError: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColorLight,
      foregroundColor: Colors.white,
      elevation: 2,
      centerTitle: true,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColorLight,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 2,
        textStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primaryColorLight,
        side: const BorderSide(color: AppColors.primaryColorLight, width: 2),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    cardTheme: CardThemeData(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.antiAlias,
      shadowColor: AppColors.primaryColorLight.withOpacity(0.3),
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.poppins(
        color: AppColors.textColorLight,
        fontWeight: FontWeight.w700,
        fontSize: 32,
      ),
      displayMedium: GoogleFonts.poppins(
        color: AppColors.textColorLight,
        fontWeight: FontWeight.w700,
        fontSize: 28,
      ),
      displaySmall: GoogleFonts.poppins(
        color: AppColors.textColorLight,
        fontWeight: FontWeight.w700,
        fontSize: 24,
      ),
      headlineMedium: GoogleFonts.poppins(
        color: AppColors.textColorLight,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
      headlineSmall: GoogleFonts.poppins(
        color: AppColors.textColorLight,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      ),
      titleLarge: GoogleFonts.poppins(
        color: AppColors.textColorLight,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
      bodyLarge: GoogleFonts.poppins(
        color: AppColors.textColorLight,
        fontSize: 16,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: AppColors.textColorLight,
        fontSize: 14,
      ),
      labelLarge: GoogleFonts.poppins(
        color: AppColors.textColorLight,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: Colors.black12,
      thickness: 1,
      space: 24,
    ),
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColorDark,
    scaffoldBackgroundColor: AppColors.backgroundColorDark,
    cardColor: AppColors.cardColorDark,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryColorDark,
      secondary: AppColors.secondaryColorDark,
      tertiary: AppColors.accentColorDark,
      surface: AppColors.cardColorDark,
      background: AppColors.backgroundColorDark,
      error: AppColors.wrongAnswerColor,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: AppColors.textColorDark,
      onBackground: AppColors.textColorDark,
      onError: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.cardColorDark,
      foregroundColor: AppColors.textColorDark,
      elevation: 2,
      centerTitle: true,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.textColorDark,
      ),
      iconTheme: IconThemeData(color: AppColors.textColorDark),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColorDark,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 2,
        textStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primaryColorDark,
        side: const BorderSide(color: AppColors.primaryColorDark, width: 2),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    cardTheme: CardThemeData(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.antiAlias,
      shadowColor: AppColors.primaryColorDark.withOpacity(0.3),
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.poppins(
        color: AppColors.textColorDark,
        fontWeight: FontWeight.w700,
        fontSize: 32,
      ),
      displayMedium: GoogleFonts.poppins(
        color: AppColors.textColorDark,
        fontWeight: FontWeight.w700,
        fontSize: 28,
      ),
      displaySmall: GoogleFonts.poppins(
        color: AppColors.textColorDark,
        fontWeight: FontWeight.w700,
        fontSize: 24,
      ),
      headlineMedium: GoogleFonts.poppins(
        color: AppColors.textColorDark,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
      headlineSmall: GoogleFonts.poppins(
        color: AppColors.textColorDark,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      ),
      titleLarge: GoogleFonts.poppins(
        color: AppColors.textColorDark,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
      bodyLarge: GoogleFonts.poppins(
        color: AppColors.textColorDark,
        fontSize: 16,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: AppColors.textColorDark,
        fontSize: 14,
      ),
      labelLarge: GoogleFonts.poppins(
        color: AppColors.textColorDark,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: Colors.white24,
      thickness: 1,
      space: 24,
    ),
  );
}
