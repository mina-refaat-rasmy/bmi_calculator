import 'package:bmi_calculator/Core/AppColor.dart';
import 'package:bmi_calculator/Screens/Bmi_Screen.dart';
import 'package:bmi_calculator/Widget/main__button.dart';
import 'package:flutter/material.dart';

// | Category       | BMI Range |
// |----------------|-----------|
// | Underweight    | < 18.5    |
// | Normal weight  | 18.5–24.9 |
// | Overweight     | 25–29.9   |
// | Obese          | ≥ 30      |

class Stutas {
  final String text;
  final Color color;
  Stutas(this.text, this.color);
}

Stutas getStutas(double result) {
  if (result < 18.5) {
    return Stutas('Underweight', Colors.blue);
  } else if (result >= 18.5 && result < 25) {
    return Stutas('Normal weight', Colors.green);
  } else if (result >= 25 && result < 30) {
    return Stutas('Overweight', Colors.orange);
  } else {
    return Stutas('Obese', Colors.red);
  }
}

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.result});
  final double result; // Example result value
  @override
  Widget build(BuildContext context) {
    Stutas stutas = getStutas(result);
    return Scaffold(
      backgroundColor: AppColor.primary,
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        centerTitle: true,
        title: Text(
          'Result Screen',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xFFc1c3cf),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 60, 15, 5),
        child: Container(
          decoration: BoxDecoration(
            color: AppColor.graycolor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  stutas.text,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: stutas.color,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  result.toStringAsFixed(
                    2,
                  ), // Display the result with 2 decimal places
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColor.textPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 20),
        child: Main_Button(
          text: 'Re-Calculate',
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Bmi_Screen()),
            );
          },
        ),
      ),
    );
  }
}
