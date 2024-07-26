import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/widgets/custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBox extends StatefulWidget {
  const CustomBox({super.key, required this.boxTitle});
  final String boxTitle;
  @override
  State<CustomBox> createState() => _CustomBoxState();
}

class _CustomBoxState extends State<CustomBox> {
  int weight = 74;
  int age = 19;
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
            widget.boxTitle.toUpperCase(),
            style: const TextStyle(
                color: kTextPrimaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          Text(
            widget.boxTitle == 'Weight' ? '$weight' : '$age',
            style: const TextStyle(
                color: kTextSecondaryColor,
                fontSize: 60,
                fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.boxTitle == 'Weight' ? weight-- : age--;
                    if (age < 1) age = 1;
                    if (weight < 1) weight = 1;
                  });
                },
                child: const CustomIcon(
                  icon: FontAwesomeIcons.minus,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.boxTitle == 'Weight' ? weight++ : age++;
                    if (age >= 120) age = 120;
                    if (weight >= 200) weight = 200;
                  });
                },
                child: const CustomIcon(
                  icon: Icons.add,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
