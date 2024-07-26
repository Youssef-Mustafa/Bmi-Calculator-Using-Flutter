import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class GenderBox extends StatelessWidget {
  const GenderBox({super.key, required this.gender});
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      width: 170,
      height: 150,
      child: Column(
        children: [
          Icon(
            gender == 'Male' ? Icons.male : Icons.female,
            size: 100,
            color: kTextSecondaryColor,
          ),
          Text(
            gender,
            style: const TextStyle(
              color: kTextSecondaryColor,
              fontSize: 26,
            ),
          ),
        ],
      ),
    );
  }
}
