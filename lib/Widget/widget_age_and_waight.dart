import 'package:bmi_calculator/Core/AppColor.dart';
import 'package:flutter/material.dart';

class widget_ageAndWaight extends StatelessWidget {
  const widget_ageAndWaight({super.key, required this.text, required this.num, required this.onadd, required this.onremove});
  final String text;
  final int num;
  final Function() onadd;
  final Function() onremove;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.graycolor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: AppColor.textPrimary, fontSize: 20),
            ),
            Text(
              num.toString(),
              style: TextStyle(
                color: AppColor.textPrimary,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: AppColor.buttoncolor,
                  ),
                  onPressed: onadd,
                  icon: Icon(Icons.add, color: AppColor.textPrimary),
                ),
                SizedBox(width: 10),
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: AppColor.buttoncolor,
                  ),
                  onPressed: onremove,
                  icon: Icon(Icons.remove, color: AppColor.textPrimary),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
