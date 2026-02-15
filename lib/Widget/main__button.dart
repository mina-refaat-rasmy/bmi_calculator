import 'package:bmi_calculator/Core/AppColor.dart';
import 'package:flutter/material.dart';

class Main_Button extends StatelessWidget {
  const Main_Button({super.key, required this.text, this.onPressed});

  final String text;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 50),
          backgroundColor: AppColor.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: AppColor.textPrimary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
