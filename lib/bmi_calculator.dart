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
          padding:
              const EdgeInsets.only(left: 30, top: 10, right: 30, bottom: 10),
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kTileClr,
                      ),
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kTileClr,
                      ),
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(
                          color: kTextClr1,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "183",
                            style: TextStyle(
                              color: kTextClr,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 5),
                            child: Text(
                              "cm",
                              style: TextStyle(
                                color: kTextClr1,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Slider(
                          min: 80,
                          max: 200,
                          value: 183,
                          activeColor: kTextClr1,
                          thumbColor: kThumbClr,
                          onChanged: (value) {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 150,
                      height: 190,
                      color: kTileClr1,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              "WEIGHT",
                              style: TextStyle(
                                  color: kTextClr1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "74",
                                  style: TextStyle(
                                      fontSize: 50,
                                      color: kTextClr,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Text(
                                    "kg",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: kTextClr1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  shape: ShapeBorder.lerp(
                                      CircleBorder(), CircleBorder(), 0.5),
                                  onPressed: () {},
                                  backgroundColor: kTileClr,
                                  child: Icon(
                                    Icons.remove,
                                    color: kTextClr,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                FloatingActionButton(
                                  shape: ShapeBorder.lerp(
                                      CircleBorder(), CircleBorder(), 0.5),
                                  onPressed: () {},
                                  backgroundColor: kTileClr,
                                  child: Icon(
                                    Icons.add,
                                    color: kTextClr,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      width: 150,
                      height: 190,
                      color: kTileClr1,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              "AGE",
                              style: TextStyle(
                                  color: kTextClr1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "19",
                              style: TextStyle(
                                  fontSize: 50,
                                  color: kTextClr,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  shape: ShapeBorder.lerp(
                                      CircleBorder(), CircleBorder(), 0.5),
                                  onPressed: () {},
                                  backgroundColor: kTileClr,
                                  child: Icon(
                                    Icons.remove,
                                    color: kTextClr,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                FloatingActionButton(
                                  shape: ShapeBorder.lerp(
                                      CircleBorder(), CircleBorder(), 0.5),
                                  onPressed: () {},
                                  backgroundColor: kTileClr,
                                  child: Icon(
                                    Icons.add,
                                    color: kTextClr,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "CALCULATE YOUR BMI",
                        style: TextStyle(
                            color: kTextClr,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: kThumbClr,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
