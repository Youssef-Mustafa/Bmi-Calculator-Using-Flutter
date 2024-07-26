import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: const Color(0xff1c1f32),
          borderRadius: BorderRadius.circular(50)),
      child: Icon(
        icon,
        color: kTextSecondaryColor,
        size: 36,
      ),
    );
  }
}
