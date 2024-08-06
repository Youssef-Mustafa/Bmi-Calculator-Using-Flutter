import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/widgets/custom_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBox extends StatelessWidget {
  final String boxTitle;
  final int value;
  final ValueChanged<int> onValueChanged;

  const CustomBox({
    super.key,
    required this.boxTitle,
    required this.value,
    required this.onValueChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 170,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            boxTitle.toUpperCase(),
            style: const TextStyle(
              color: kTextPrimaryColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '$value',
            style: const TextStyle(
              color: kTextSecondaryColor,
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  int newValue = value - 1;
                  if (boxTitle == 'Weight' && newValue < 1) newValue = 1;
                  if (boxTitle == 'Age' && newValue < 1) newValue = 1;
                  onValueChanged(newValue);
                },
                child: const CustomIcon(icon: FontAwesomeIcons.minus),
              ),
              GestureDetector(
                onTap: () {
                  int newValue = value + 1;
                  if (boxTitle == 'Weight' && newValue > 200) newValue = 200;
                  if (boxTitle == 'Age' && newValue > 120) newValue = 120;
                  onValueChanged(newValue);
                },
                child: const CustomIcon(icon: Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
