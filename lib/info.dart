import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyInfo extends StatelessWidget {
  final String num1;
  final String num2;
  final String num3;
  final String ageGroup;
  MyInfo(
      {required this.num1,
      required this.num2,
      required this.num3,
      required this.ageGroup});

  @override
  Widget build(BuildContext context) {
    int glucoseBeforeMeals = int.tryParse(num1) ?? 0;
    int glucoseAfterMeals = int.tryParse(num2) ?? 0;
    int glucoseother = int.tryParse(num3) ?? 0;
    //String ageGroup = ageGroup;
    //String glucoseBeforeMealsStatus;
    String? glucoseMealsStatus;
    String ageGroupNameStatus;
    String colourStatus;

    if (ageGroup == 'children') {
      ageGroupNameStatus = "children";
      if (glucoseBeforeMeals >= 90 && glucoseBeforeMeals < 130) {
        if (glucoseother < 150 && glucoseother >= 90) {
          glucoseMealsStatus = "Normal";
        } else {
          glucoseMealsStatus = "Error";
        }
      } else if (glucoseBeforeMeals >= 130) {
        if (glucoseother >= 150) {
          glucoseMealsStatus = "High";
        } else {
          glucoseMealsStatus = "Error";
        }
      } else {
        if (glucoseother < 90) {
          glucoseMealsStatus = "Low";
        } else {
          glucoseMealsStatus = "Error";
        }
      }
    } else if (ageGroup == 'adults') {
      ageGroupNameStatus = "adults";
      if (glucoseBeforeMeals > 80 && glucoseBeforeMeals < 130) {
        if (glucoseAfterMeals < 180) {
          glucoseMealsStatus = "Normal";
        } else {
          glucoseMealsStatus = "Error";
        }
      } else if (glucoseBeforeMeals > 130) {
        if (glucoseAfterMeals > 180) {
          glucoseMealsStatus = "High";
        } else {
          glucoseMealsStatus = "Error";
        }
      } else {
        if (glucoseother < 80) {
          glucoseMealsStatus = "Low";
        } else {
          glucoseMealsStatus = "Error";
        }
      }
    } else if (ageGroup == 'older') {
      ageGroupNameStatus = "older";
      if (glucoseBeforeMeals > 80 && glucoseBeforeMeals < 180) {
        if (glucoseother < 200 && glucoseother > 80) {
          glucoseMealsStatus = "Normal";
        } else {
          glucoseMealsStatus = "Error";
        }
      } else if (glucoseBeforeMeals > 180) {
        if (glucoseother > 200) {
          glucoseMealsStatus = "High";
        } else {
          glucoseMealsStatus = "Error";
        }
      } else {
        if (glucoseother < 80) {
          glucoseMealsStatus = "Low";
        } else {
          glucoseMealsStatus = "Error";
        }
      }
    } else if (ageGroup == 'common') {
      ageGroupNameStatus = "healthy";
      if (glucoseBeforeMeals >= 70 && glucoseBeforeMeals <= 125) {
        if (glucoseAfterMeals < 199) {
          glucoseMealsStatus = "Normal";
        } else {
          glucoseMealsStatus = "Error";
        }
      } else if (glucoseBeforeMeals > 125) {
        if (glucoseAfterMeals > 200) {
          glucoseMealsStatus = "High";
        } else {
          glucoseMealsStatus = "Error";
        }
      } else {
        glucoseMealsStatus = "Error";
      }
    } else {
      ageGroupNameStatus = "pregnant";
      if (glucoseBeforeMeals < 95) {
        if (glucoseAfterMeals < 140) {
          glucoseMealsStatus = "Normal";
        } else if (glucoseother > 120) {
          glucoseMealsStatus = "Normal";
        }
      } else if (glucoseBeforeMeals > 95) {
        if (glucoseAfterMeals > 140) {
          glucoseMealsStatus = "High";
        }
      } else {
        glucoseMealsStatus = "Error";
      }
    }
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/pic.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                child: Container(
                  color: Colors.white.withOpacity(0.0),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color(0x488b8b8b),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 8.0),
                      Container(
                        width: 350,
                        height: 40,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xFFA6C8FB), Color(0xFF7174DF)],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'G L U C O S E  V A L U E S',
                              style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Container(
                        width: 350,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Before meals (fasting): $glucoseBeforeMeals mg/dL',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff272727),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Container(
                        width: 350,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'After meals: $glucoseAfterMeals mg/dL',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff272727),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Container(
                        width: 350,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'other: $glucoseother mg/dL',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff272727),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Container(
                        width: 350,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'AgeGroup: $ageGroupNameStatus ',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff272727),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Container(
                        width: 350,
                        height: 40,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xFFA6C8FB), Color(0xFF7174DF)],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'G L U C O S E  S T A T U S',
                              style: GoogleFonts.comfortaa(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Container(
                        width: 350,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '$glucoseMealsStatus',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff272727),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Include your form elements here
                  // For example: TextFields, Buttons, etc.
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
