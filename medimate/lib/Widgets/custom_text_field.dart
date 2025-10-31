import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  const CustomTextField({super.key, required this.hintText, required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
                decoration: InputDecoration(
                  hintText: hintText,
                  fillColor: Color.fromARGB(255, 250, 251, 249),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  
                  prefixIcon:Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(prefixIcon),
                  ),  
                  
                ),
              );
  }
}