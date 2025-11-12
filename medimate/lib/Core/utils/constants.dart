import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primaryBlue = Color(0xFF2F80ED);
  static const Color accentBlue = Color(0xFF56CCF2);

  // Neutral Colors
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color grey = Color(0xFFBDBDBD);
  static const Color lightGrey = Color(0xFFF2F2F2);

  // Dark Theme Backgrounds
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkCard = Color(0xFF1E1E1E);

  // Text
  static const Color textDark = Colors.black87;
  static const Color textLight = Colors.white;
}

class AppStrings {
  static const String appName = "Medimate";
  static const String apiBaseUrl = "https://api.myflutterapp.com";
  static const int timeoutDuration = 30; // in seconds
}
