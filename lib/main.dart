import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: kPrimaryColor,
        appBarTheme: const AppBarTheme(backgroundColor: kPrimaryColor),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
