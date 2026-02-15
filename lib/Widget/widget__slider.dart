import 'package:bmi_calculator/Core/AppColor.dart';
import 'package:flutter/material.dart';

class Widget_Slider extends StatelessWidget {
  const Widget_Slider({
    super.key,
    required this.height,
    required this.onChanged,
  });

  final int height;
  final Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.graycolor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Height',
              style: TextStyle(color: AppColor.textPrimary, fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  height.toString(),
                  style: TextStyle(color: AppColor.textPrimary, fontSize: 40),
                ),
                Text(
                  'cm',
                  style: TextStyle(color: AppColor.textPrimary, fontSize: 20),
                ),
              ],
            ),
            Slider(
              value: height.toDouble(),
              min: 60,
              max: 200,
              activeColor: AppColor.secondary,
              inactiveColor: AppColor.textPrimary,
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
