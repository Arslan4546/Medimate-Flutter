import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medimate/Core/theme/app_theme.dart';
import 'package:medimate/Core/utils/constants.dart';
import 'package:medimate/Views/splash_screen/splash_screen.dart';
import 'package:medimate/Widgets/custom_parent_widget.dart';
import 'package:medimate/controllers/sign_up_bloc/sign_up_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<SignUpBloc>(create: (context) => SignUpBloc())],
      child: MaterialApp(
        title: AppStrings.appName,
        themeMode: ThemeMode.system,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        home: CustomParentWidget(child: SplashScreen()),
      ),
    );
  }
}
