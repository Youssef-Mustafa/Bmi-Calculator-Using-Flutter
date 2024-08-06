import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/widgets/custom_app_bar.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});
  static String id = kResultPage;

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the ModalRoute
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final double height = args['height'];
    final int weight = args['weight'];
    final int age = args['age'];

    // Calculate BMI
    double bmi = weight / ((height / 100) * (height / 100));
    String bmiCategory = _getBMICategory(bmi);
    String bmiDescription = _getBMIDescription(bmi);

    return Scaffold(
      backgroundColor: Colors.black87, // Dark background
      body: Column(
        children: [
          const CustomAppBar(), // Custom App Bar

          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          Expanded(
            child: Container(
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.blueGrey[900], // Dark card background
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiCategory.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      bmi.toStringAsFixed(1),
                      style: const TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'Normal BMI range:',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    const Text(
                      '18.5 - 25 kg/m²',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      bmiDescription,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        // Implement save result functionality
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 30.0),
                      ),
                      child: const Text(
                        'SAVE RESULT',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Container(
            width: double.infinity,
            color: Colors.pink,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'RE-CALCULATE YOUR BMI',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getBMICategory(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi < 25) {
      return 'Normal';
    } else if (bmi >= 25 && bmi < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  String _getBMIDescription(double bmi) {
    if (bmi < 18.5) {
      return 'You are underweight. It might be a good idea to consult with a healthcare provider to determine the cause and to create a plan to achieve a healthier weight.';
    } else if (bmi >= 18.5 && bmi < 25) {
      return 'You have a normal body weight. Good job!';
    } else if (bmi >= 25 && bmi < 30) {
      return 'You are overweight. Consider adopting a healthier diet and incorporating more physical activity into your daily routine.';
    } else {
      return 'You are in the obese range. It is important to consult with a healthcare provider to create a plan for achieving a healthier weight.';
    }
  }
}
