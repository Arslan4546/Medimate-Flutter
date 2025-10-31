import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color buttonColor;
  final String label;
  final Color labelColorData;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.buttonColor, required this.label, required this.labelColorData, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, 
      style: ButtonStyle(backgroundColor: WidgetStateColor.resolveWith((states) => buttonColor,)),
      child: Text(label,style: TextStyle(color: labelColorData,fontSize: 16,fontWeight: FontWeight.w600),),
    );
  }
}