import 'package:flutter/material.dart';
import 'package:medimate/Views/bottom%20navigaation/bottom_navigation.dart';
import 'package:medimate/Views/sign_up_screen/sign_up_screen.dart';
import 'package:medimate/Widgets/custom_button.dart';
import 'package:medimate/Widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var Size(:width,:height)=MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40,right: 40),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 70,
              child: CustomTextField(hintText: "Enter your email", prefixIcon: Icons.email_rounded) 
            ),
            Padding(padding: EdgeInsetsGeometry.all(8)),
            CustomTextField(hintText: "Enter your password", prefixIcon: Icons.lock),
            Padding(padding: EdgeInsetsGeometry.all(1)),
            Align(
              alignment: Alignment.topRight,
              child: TextButton(onPressed: (){}, child: Text("Forget Password ?",style: TextStyle(
                color: Colors.blueAccent
              ),)),
            ),
            Padding(padding: EdgeInsetsGeometry.all(25)),
            SizedBox(
              height: 56,
              width: double.infinity,
              child: CustomButton(buttonColor: Colors.blueAccent, label: "Sign In", labelColorData: Colors.white, onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => BottomNavigation(),));
              }),
            ),
            Padding(padding: EdgeInsetsGeometry.all(1)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 0,
              children: [
                Text("Don't have an account?",style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                )),
                TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen(),));
                }, child: Text("Sign Up",style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                ),))
              ],
            ),
            Padding(padding: EdgeInsetsGeometry.all(height*0.05)),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child:Container(
                    height: 1,
                    color: Colors.black26,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child:Center(child: Text("OR",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black26),))
                ),
                Expanded(
                  flex: 4,
                  child:Container(
                    height: 1,
                    color: Colors.black26,
                  ), 
                )
              ],
            ),
            SizedBox(
              height: height*0.05,
            ),
            Container(
              height: 56,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.black54),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 12,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset("assets/google-logo.png")),
                    Text("Sign in with Google",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}