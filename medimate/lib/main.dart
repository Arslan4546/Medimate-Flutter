import 'package:flutter/material.dart';
import 'package:medimate/custom_parent_widget.dart';
import 'package:medimate/splash%20screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medimate',
     theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.white,
      brightness: Brightness.light,
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    ),
    useMaterial3: true,
  ),
      home: CustomParentWidget(child: SplashScreen()),
    );
  }
}