import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});
  static String id = kResultPage;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}
