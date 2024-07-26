import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              FontAwesomeIcons.bars,
              color: kTextSecondaryColor,
            ),
            Expanded(
              child: Center(
                child: Text(
                  'BMI CALCULATOR',
                  style: TextStyle(
                    color: kTextSecondaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
