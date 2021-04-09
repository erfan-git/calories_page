import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class OtherItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return AspectRatio(
      aspectRatio: 36/18,
      child: Container(
        constraints: BoxConstraints(
          // minHeight: 540 * 0.25,
          // maxHeight: 600 * 0.25,
          // minWidth: size.width < 300 ? 280 : double.infinity,
        ),
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.fromLTRB(8, 8, 8, 16),
        width: double.infinity,
        height: size.height * 0.3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          textDirection: TextDirection.ltr,
          children: [
            itemDetail(
                size: size,
                name: 'کربوهیدرات',
                color: Color(0xff3ec8bc),
                percent: 0.20,
                amount: 215),
            itemDetail(
                size: size,
                name: 'چربی',
                color: Color(0xff6155cc),
                percent: 0.45,
                amount: 468),
            itemDetail(
                size: size,
                name: 'پروتئین',
                color: Color(0xfffe9c5e),
                percent: 0.35,
                amount: 305),
          ],
        ),
      ),
    );
  }

  Widget itemDetail(
      {Size size, String name, int amount, double percent, Color color}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
        constraints: BoxConstraints(
          // minHeight: 540 * 0.25,
          // maxHeight: 600 * 0.25,
          minWidth: 75,
        ),
        width: double.infinity,
        // height: size.height * 0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          shape: BoxShape.rectangle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[400],
              blurRadius: 15.0,
              spreadRadius: 1.0,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                name,
                style: TextStyle(
                  color: color,
                  fontSize: size.width * 0.04,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                ' ${amount} گرم',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: size.width * 0.03,
                ),
              ),
            ),
            showIndicator(percent: percent, color: color, size: size)
          ],
        ),
      ),
    );
  }

  Widget showIndicator({double percent, Size size, Color color}) {
    return Expanded(
      child: CircularPercentIndicator(
        // radius: size.width < 300.0 ? 40 : 60,
        radius: size.width*0.15,
        lineWidth: 4.0,
        percent: percent,
        progressColor: color,
        backgroundColor: Color(0xffeeeeee),
        center: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "%${(percent * 100).toString()}",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
