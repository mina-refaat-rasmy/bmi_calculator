import 'package:bmi_calculator/Core/AppColor.dart';
import 'package:bmi_calculator/Screens/Result_Screen.dart';
import 'package:bmi_calculator/Widget/main__button.dart';
import 'package:bmi_calculator/Widget/widget__contener.dart';
import 'package:bmi_calculator/Widget/widget__slider.dart';
import 'package:bmi_calculator/Widget/widget_age_and_waight.dart';
import 'package:flutter/material.dart';

class Bmi_Screen extends StatefulWidget {
  const Bmi_Screen({super.key});

  @override
  State<Bmi_Screen> createState() => _Bmi_ScreenState();
}

int age = 20;
int waight = 60;
int height = 160;
bool isMale = true;

class _Bmi_ScreenState extends State<Bmi_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xFFc1c3cf),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Column(
            spacing: 15,
            children: [GenderCart(), HeightSelection(), WeightAndAge()],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Main_Button(
          text: 'Calculate',
          onPressed: () {
            double result =
                waight / (height * height / 10000); // Example result value
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultScreen(result: result),
              ),
            );
          },
        ),
      ),
    );
  }

  Expanded GenderCart() {
    return Expanded(
      child: Row(
        spacing: 15,
        children: [
          Expanded(
            child: Widget_Contener(
              isSelected: isMale,
              icon: Icons.male,
              text: "Male",
              onTap: () {
                setState(() {
                  isMale = true;
                });
              },
            ),
          ),
          Expanded(
            child: Widget_Contener(
              isSelected: !isMale,
              icon: Icons.female,
              text: "Female",
              onTap: () {
                setState(() {
                  isMale = false;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget_Slider HeightSelection() {
    return Widget_Slider(
      height: height,
      onChanged: (value) {
        setState(() {
          height = value.toInt();
        });
      },
    );
  }

  Expanded WeightAndAge() {
    return Expanded(
      child: Row(
        children: [
          widget_ageAndWaight(
            text: 'Age',
            num: age,
            onadd: () {
              setState(() {
                age++;
              });
            },
            onremove: () {
              setState(() {
                age--;
              });
            },
          ),
          SizedBox(width: 15),
          widget_ageAndWaight(
            text: "waight",
            num: waight,
            onadd: () {
              setState(() {
                waight++;
              });
            },
            onremove: () {
              setState(() {
                waight--;
              });
            },
          ),
        ],
      ),
    );
  }
}
