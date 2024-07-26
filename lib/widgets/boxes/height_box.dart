import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/widgets/helper/height_row_details.dart';
import 'package:flutter/material.dart';

class HeightBox extends StatefulWidget {
  const HeightBox({super.key});

  @override
  State<HeightBox> createState() => _HeightBoxState();
}

class _HeightBoxState extends State<HeightBox> {
  double value = 150;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
          color: kSecondaryColor, borderRadius: BorderRadius.circular(6)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'HEIGHT',
            style: TextStyle(
              color: kTextPrimaryColor,
              fontSize: 20,
            ),
          ),
          HeightRowDetails(value: value),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: sliderThemeData(context),
          )
        ],
      ),
    );
  }

  SliderTheme sliderThemeData(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
          activeTrackColor: kTextSecondaryColor,
          thumbColor: kButtonsColor,
          trackHeight: 1,
          overlayColor: kButtonsColor.withAlpha(32)),
      child: sliderValue(),
    );
  }

  Slider sliderValue() {
    return Slider(
        value: value,
        min: 0,
        max: 250,
        onChanged: (newValue) {
          setState(() {
            value = newValue;
          });
        });
  }
}
