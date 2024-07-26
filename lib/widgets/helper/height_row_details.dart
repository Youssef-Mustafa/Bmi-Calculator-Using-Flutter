import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class HeightRowDetails extends StatelessWidget {
  const HeightRowDetails({
    super.key,
    required this.value,
  });

  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end, // Align bottom of row

      children: [
        Text(
          '${value.round()}',
          style: const TextStyle(
            color: kTextSecondaryColor,
            fontSize: 60,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: Text(
                'cm',
                style: TextStyle(
                  color: kTextPrimaryColor,
                  fontSize: 16, // Adjust font size if needed
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
