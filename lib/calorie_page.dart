import 'package:calories_page/activities.dart';
import 'package:calories_page/bottomNavigationBar.dart';
import 'package:calories_page/calculator.dart';
import 'package:calories_page/chart.dart';
import 'package:calories_page/indicators.dart';
import 'package:calories_page/other.dart';
import 'package:calories_page/scales.dart';
import 'package:calories_page/titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CaloriePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            color: Colors.white,
            height: size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: size.height * 0.15,
                  decoration: BoxDecoration(
                    color: Color(0xff78d9d0),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Titles(),
                Indicators(),
                Calculator(),
                OtherItem(),
                Chart(),
                Activities(),
                Scales(),
                SizedBox(
                  height: 90,
                ),
              ],
            ),
          ),
          CalorieBottomNavigationBar(),
        ],
      ),
    );
  }
}
