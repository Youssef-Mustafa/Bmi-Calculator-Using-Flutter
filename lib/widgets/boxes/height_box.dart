import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';

class HeightBox extends StatefulWidget {
  final double height;
  final ValueChanged<double> onHeightChanged;

  const HeightBox({
    super.key,
    required this.height,
    required this.onHeightChanged,
  });

  @override
  State<HeightBox> createState() => _HeightBoxState();
}

class _HeightBoxState extends State<HeightBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(6),
      ),
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
          Text(
            '${widget.height.toStringAsFixed(1)} cm',
            style: const TextStyle(
              color: kTextSecondaryColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: kTextSecondaryColor,
                thumbColor: kButtonsColor,
                trackHeight: 1,
                overlayColor: kButtonsColor.withAlpha(32),
              ),
              child: Slider(
                value: widget.height,
                min: 0,
                max: 250,
                onChanged: widget.onHeightChanged,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
