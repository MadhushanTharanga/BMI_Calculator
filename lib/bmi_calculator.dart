import 'dart:math';

import 'package:bmi_cal/constant.dart';
import 'package:flutter/material.dart';

class BMICalculatorPage extends StatefulWidget {
  const BMICalculatorPage({super.key});

  @override
  State<BMICalculatorPage> createState() => _BMICalculatorPageState();
}

class _BMICalculatorPageState extends State<BMICalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: kTextClr,
        ),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text(
              'BMI CALCULATOR',
              style: TextStyle(
                color: kTextClr,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
        backgroundColor: kAppBarClr,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: kAppBarClr,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: 140,
                      height: 130,
                      color: kTileClr,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          kMaleIcon,
                          SizedBox(height: 10),
                          Text(
                            "MALE",
                            style: TextStyle(
                                color: kTextClr,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      width: 140,
                      height: 130,
                      color: kTileClr,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Transform.rotate(
                            angle: 40 *
                                pi /
                                180, // Rotate 45 degrees (convert to radians)
                            child: kFemaleIcon,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "FEMALE",
                            style: TextStyle(
                                color: kTextClr,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 200,
                color: kTileClr1,
                child: Column(
                  children: [
                    Text("HEIGHT"),
                    Text("183cm"),
                    Slider(min: 80, max: 200, value: 183, onChanged: (value) {})
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
