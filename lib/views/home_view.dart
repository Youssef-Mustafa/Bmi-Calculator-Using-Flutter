import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/widgets/boxes/custom_box.dart';
import 'package:bmi_calculator/widgets/boxes/gender_box.dart';
import 'package:bmi_calculator/widgets/boxes/height_box.dart';
import 'package:bmi_calculator/widgets/custom_app_bar.dart';
import 'package:bmi_calculator/widgets/custom_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double height = 150;
  int weight = 74;
  int age = 19;

  void updateHeight(double newHeight) {
    setState(() {
      height = newHeight;
    });
  }

  void updateWeight(int newWeight) {
    setState(() {
      weight = newWeight;
    });
  }

  void updateAge(int newAge) {
    setState(() {
      age = newAge;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: CustomAppBar(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GenderBox(gender: "Male"),
                GenderBox(gender: "Female"),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: HeightBox(
              height: height,
              onHeightChanged: updateHeight,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBox(
                  boxTitle: 'Weight',
                  value: weight,
                  onValueChanged: updateWeight,
                ),
                CustomBox(
                  boxTitle: 'Age',
                  value: age,
                  onValueChanged: updateAge,
                ),
              ],
            ),
          ),
          const Spacer(),
          CustomButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                kResultPage,
                arguments: {
                  'height': height,
                  'weight': weight,
                  'age': age,
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
