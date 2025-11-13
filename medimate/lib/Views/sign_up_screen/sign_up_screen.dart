import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medimate/Views/login_screen/login_screen.dart';
import 'package:medimate/Widgets/custom_button.dart';
import 'package:medimate/Widgets/custom_text_field.dart';
import 'package:medimate/controllers/sign_up_bloc/sign_up_bloc.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: SizedBox(
          height: height * 0.14,
          child: Column(
            children: [
              SizedBox(
                height: 56,
                width: double.infinity,
                child: CustomButton(
                  buttonColor: Colors.blueAccent,
                  label: "Sign Up",
                  labelColorData: Colors.white,
                  onPressed: () {},
                ),
              ),
              Padding(padding: EdgeInsetsGeometry.all(1)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 0,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: BlocBuilder<SignUpBloc, SignUpState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Column(
              children: [
                SizedBox(height: 25),
                CustomTextField(
                  hintText: "Enter your name",
                  prefixIcon: Icons.person_2_rounded,
                ),
                Padding(padding: EdgeInsetsGeometry.all(8)),
                CustomTextField(
                  hintText: "Enter your email",
                  prefixIcon: Icons.email_rounded,
                ),
                Padding(padding: EdgeInsetsGeometry.all(8)),
                CustomTextField(
                  hintText: "Enter your password",
                  prefixIcon: Icons.lock,
                ),
                Padding(padding: EdgeInsetsGeometry.all(2)),
                SizedBox(
                  height: 60,
                  child: Row(
                    children: [
                      Align(
                        alignment: AlignmentGeometry.topLeft,
                        child: Checkbox(
                          value: state.checkBox,
                          onChanged: (value) {
                            context.read<SignUpBloc>().add(
                              OnClickCheckBox(value: value ?? false),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 270,
                        child: RichText(
                          strutStyle: StrutStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18
                          ),
                          maxLines: 2,
                        text: TextSpan(
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                          ),
                          children: [
                            const TextSpan(text: 'I agree to the healthcare'),
                            TextSpan(
                              text: 'Terms of Service',
                              style: const TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  
                                },
                            ),
                            const TextSpan(text: ' and '),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: const TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  
                                },
                            ),
                            const TextSpan(text: '.'),
                          ],
                        ),
                                          ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
