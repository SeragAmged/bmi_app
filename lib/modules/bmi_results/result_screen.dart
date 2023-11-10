import 'package:bmi_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;
  final String res;
  final String adv;
  final Color resColor;
  const ResultScreen({
    super.key,
    required this.bmi,
    required this.res,
    required this.resColor,
    required this.adv,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0.0,
        title: const Text(
          'BMI RESULTS',
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            padding: const EdgeInsets.all(10.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 25.0,
                ),
                Text(
                  res,
                  style: TextStyle(
                    color: resColor,
                    fontSize: 36.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Text(
                  '${bmi.round()}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 64.0,
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Text(
                  'Normal BMI range',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Text(
                  '18,5 - 25 kg/m2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Text(
                  adv,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
