import 'package:flutter/material.dart';
import 'package:medimate/Core/theme/app_colors.dart';

import 'app_text_styles.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    primaryColor: AppColors.primaryBlue,
    colorScheme: ColorScheme.light(
      primary: AppColors.primaryBlue,
      secondary: AppColors.accentBlue,
      surface: AppColors.white,
      onPrimary: AppColors.white,
      onSecondary: AppColors.white,
      onSurface: AppColors.textDark,
    ),
    textTheme: TextTheme(
      bodyLarge: AppTextStyles.heading,
      bodyMedium: AppTextStyles.subHeading,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryBlue,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primaryBlue,
        side: const BorderSide(color: AppColors.primaryBlue),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkBackground,
    primaryColor: AppColors.accentBlue,
    colorScheme: ColorScheme.dark(
      primary: AppColors.accentBlue,
      secondary: AppColors.primaryBlue,
      surface: AppColors.darkCard,
      onPrimary: AppColors.white,
      onSecondary: AppColors.white,
      onSurface: AppColors.textLight,
    ),
    textTheme: TextTheme(
      bodyLarge: AppTextStyles.heading.copyWith(color: AppColors.textLight),
      bodyMedium: AppTextStyles.subHeading.copyWith(color: AppColors.grey),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.accentBlue,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
  );
}
