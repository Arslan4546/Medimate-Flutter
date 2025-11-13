import 'package:flutter/material.dart';
import 'package:medimate/Views/login_screen/login_screen.dart';

import 'package:my_flutter_onboarding_slider/my_flutter_onboarding_slider.dart';
class Onbourdingscreen extends StatelessWidget{
  const Onbourdingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(totalPage: 3,
    addController: true,
    centerBackground: true,
    controllerColor: Colors.blueAccent,
     pageBodies: [
      Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'Find a lot of specialist doctors in one place',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'Get advice only from a doctor you believe in.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ), 
              const SizedBox(
                height: 20,
              ),
              
            ],
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/Group 212.png"),
              Padding(padding: EdgeInsetsGeometry.all(8)),
              Text("Let's get Started!",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w800),),
              Text("Login to Stay healthy and fit",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),
              Padding(padding: EdgeInsetsGeometry.all(16)),  
              SizedBox(
                height: 56,
                width: 250
                ,child: ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStateColor.resolveWith((states) => Colors.blueAccent,)),
                onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen(),));
                }, 
                child: Text("Login",style: TextStyle(color: Colors.white)),)),
              Padding(padding: EdgeInsetsGeometry.all(8)),  
              SizedBox(
                height: 56,
                width: 250
                ,child: ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStateColor.resolveWith((states) => Colors.white,)),onPressed: (){}, child: Text("Sign Up",style: TextStyle(color: Colors.blue)),)),
            ],
          ),
        ),
    ],headerBackgroundColor: Colors.white, background: [
      Image.asset(
        fit: BoxFit.contain,
          'assets/beautiful-young-female-doctor-looking-camera-office-removebg-preview 1.png',
          height: 500,
        ),
        Image.asset(
          fit: BoxFit.contain,
          'assets/doctor-with-his-arms-crossed-white-background-removebg-preview 1.png',
          height: 500,
        ),
        Container(
          
        )
    ], speed: 1.8,
    
    addButton: true,
    skipTextButton: Text("Skip",style: TextStyle(color: Colors.black26,fontSize: 16),),
    pageBackgroundColor: Colors.white,
    hasFloatingButton: true,
    hasSkip: true,
    finishButtonStyle: FinishButtonStyle(backgroundColor: Colors.blue,shape: CircleBorder()),
    );
  }
}