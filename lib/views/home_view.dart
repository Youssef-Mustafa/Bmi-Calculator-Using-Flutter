import 'package:bmi_calculator/widgets/boxes/custom_box.dart';
import 'package:bmi_calculator/widgets/boxes/gender_box.dart';
import 'package:bmi_calculator/widgets/boxes/height_box.dart';
import 'package:bmi_calculator/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: CustomAppBar(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GenderBox(
                  gender: "Male",
                ),
                GenderBox(
                  gender: "Female",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: HeightBox(),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBox(
                  boxTitle: 'Weight',
                ),
                CustomBox(
                  boxTitle: 'Age',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
