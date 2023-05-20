import 'dart:math';
import 'package:bmi_app/modules/bmi_results/result_screen.dart';
import 'package:bmi_app/shared/components/components.dart';
import 'package:bmi_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});
  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 180.0;
  int weight = 60;
  int age = 18;
  String res = '';
  String adv = '';
  Color resColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0.0,
        title: const Text(
          'BMI CALCULATOR',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: backgroundColor,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20,
                        top: 20,
                        right: 10,
                        left: 20,
                      ),
                      child: GestureDetector(
                        onTap: () => setState(() => isMale = true),
                        child: Container(
                          decoration: BoxDecoration(
                            color: isMale ? containerColor : notChosenColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.male,
                                size: 90,
                                color: Colors.white,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20,
                        top: 20,
                        right: 20,
                        left: 10,
                      ),
                      child: GestureDetector(
                        onTap: () => setState(() => isMale = false),
                        child: Container(
                          decoration: BoxDecoration(
                            color: !isMale ? containerColor : notChosenColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.female,
                                size: 90,
                                color: Colors.white,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: backgroundColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: containerColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'HEIGHT',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 24.0,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const Text(
                            'cm',
                            style: TextStyle(
                              color: textColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        activeColor: Colors.white,
                        thumbColor: accentColor,
                        inactiveColor: textColor,
                        max: 220,
                        value: height,
                        min: 80,
                        onChanged: (double value) =>
                            setState(() => height = value),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: backgroundColor,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20,
                        top: 20,
                        right: 10,
                        left: 20,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'WEIGHT',
                              style: TextStyle(
                                color: textColor,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '$weight',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: 'w--',
                                  onPressed: () => setState(() {
                                    if (weight > 0) {
                                      weight--;
                                    }
                                  }),
                                  mini: true,
                                  backgroundColor: floatingButtonColor,
                                  child: const Icon(Icons.remove),
                                ),
                                FloatingActionButton(
                                  heroTag: 'w++',
                                  onPressed: () => setState(() => weight++),
                                  mini: true,
                                  backgroundColor: floatingButtonColor,
                                  child: const Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20,
                        top: 20,
                        right: 20,
                        left: 10,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'AGE',
                              style: TextStyle(
                                color: textColor,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '$age',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: 'a--',
                                  onPressed: () => setState(() {
                                    if (age > 0) {
                                      age--;
                                    }
                                  }),
                                  mini: true,
                                  backgroundColor: floatingButtonColor,
                                  child: const Icon(Icons.remove),
                                ),
                                FloatingActionButton(
                                  heroTag: 'a++',
                                  onPressed: () => setState(() => age++),
                                  mini: true,
                                  backgroundColor: floatingButtonColor,
                                  child: const Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: defaultButton(
              function: () {
                  double bmi = weight / pow(height / 100, 2);
                  if (bmi < 18.5) {
                    res = 'Under weight';
                    resColor = Colors.amber;
                    adv = 'You have a slim body \nEat more!';
                  } else if (18.5 <= bmi && bmi < 24.9) {
                    res = 'Normal';
                    resColor = normalTextColor;
                    adv = 'You have a normal body weight\nGood job!';
                  } else if (24.9 <= bmi && bmi < 29.9) {
                    res = 'Over weight';
                    resColor = Colors.red;
                    adv = 'Do some workouts';
                  } else {
                    res = 'Obese';
                    resColor = Colors.red;
                    adv = 'Do workouts and go on a diet';
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(
                        bmi: bmi,
                        res: res,
                        resColor: resColor,
                        adv: adv,
                      ),
                    ),
                  );
                },
              text: 'Calculator',
            ),
          ),
        ],
      ),
    );
  }
}
