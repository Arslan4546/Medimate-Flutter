import 'dart:ui';

import 'package:flutter/material.dart';

class AppStrings {
  static const String appName = "Medimate";
  static const String apiBaseUrl = "https://api.myflutterapp.com";
  static const int timeoutDuration = 30; // in seconds
}

class AppColors {
  // Colors - Professional color palette
  static const Color primaryColorLight = Colors.blueAccent; // Indigo
  static const Color primaryColorDark = Color(0xFF5C6BC0); // Lighter Indigo
  static const Color secondaryColorLight = Color(0xFF00BCD4); // Cyan
  static const Color secondaryColorDark = Color(0xFF26C6DA); // Lighter Cyan
  static const Color accentColorLight = Color(0xFFFF9800); // Orange
  static const Color accentColorDark = Color(0xFFFFB74D); // Lighter Orange
  static const Color backgroundColorLight = Color(0xFFF8F9FA); // Light Gray
  static const Color backgroundColorDark = Color(0xFF121212); // Dark Gray
  static const Color cardColorLight = Colors.white;
  static const Color cardColorDark = Color(0xFF1E1E1E);
  static const Color textColorLight = Color(0xFF212121); // Near Black
  static const Color textColorDark = Color(0xFFECEFF1); // Off White
  static const Color correctAnswerColor = Color(0xFF4CAF50); // Green
  static const Color wrongAnswerColor = Color(0xFFF44336); // Red
  static const Color timerWarningColor = Color(0xFFFF9800); // Orange
}
