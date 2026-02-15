import 'package:bmi_calculator/Core/AppColor.dart';
import 'package:flutter/material.dart';

class Widget_Contener extends StatelessWidget {
  const Widget_Contener({super.key, required this.icon, required this.text, required this.onTap, required this.isSelected});

  final IconData icon;
  final String text;
  final Function() onTap;
  final bool isSelected;
  @override

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        decoration: BoxDecoration(
          color: (isSelected) ? AppColor.secondary : AppColor.graycolor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: AppColor.textPrimary, size: 80),
            Text(
              text,
              style: TextStyle(color: AppColor.textPrimary, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
