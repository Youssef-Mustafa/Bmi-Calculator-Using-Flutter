import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/widgets/boxes/custom_box.dart';
import 'package:bmi_calculator/widgets/boxes/gender_box.dart';
import 'package:bmi_calculator/widgets/boxes/height_box.dart';
import 'package:bmi_calculator/widgets/custom_app_bar.dart';
import 'package:bmi_calculator/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
                GenderBox(
                  gender: "Male",
                ),
                GenderBox(
                  gender: "Female",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: HeightBox(),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
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
          const Spacer(),
          CustomButton(
            onPressed: () {
              Navigator.pushNamed(context, kResultPage);
            },
          ),
        ],
      ),
    );
  }
}
