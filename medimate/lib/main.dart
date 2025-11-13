import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medimate/Views/splash_screen/splash_screen.dart';
import 'package:medimate/Widgets/custom_parent_widget.dart';
import 'package:medimate/controllers/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:medimate/controllers/sign_up_bloc/sign_up_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SignUpBloc>(create: (context) => SignUpBloc(),),
        BlocProvider<BottomNavigationBloc>(create: (context) => BottomNavigationBloc(),)
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
