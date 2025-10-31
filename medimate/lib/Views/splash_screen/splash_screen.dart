import 'package:flutter/material.dart';
import 'package:medimate/Views/on_boarding_ui/onbourdingscreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }
  void init()async{
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Onbourdingscreen(),));
  }
  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/Spalsh screen.png",fit: BoxFit.fill,filterQuality: FilterQuality.high,);
  }
}
