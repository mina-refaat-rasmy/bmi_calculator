import 'package:bmi_calculator/Screens/Bmi_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugProfileBuildsEnabled = true;
    return const MaterialApp(home: Bmi_Screen());
  }
}
