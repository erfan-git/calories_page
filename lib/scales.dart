import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Scales extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(16, 8, 16, 16),
      padding: EdgeInsets.all(16),
      constraints: BoxConstraints(
        minHeight: 540 * 0.25,
        // maxHeight: 600 * 0.25,
        minWidth: 75,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
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
      child: Row(
        textDirection: TextDirection.ltr,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/images/scales.svg',
            fit: BoxFit.contain,
            height: size.width * 0.2,
            // width: size.width * 0.2,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 24),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'محدوده وزن نرمال',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.04,
                    ),
                  ),
                ),
              ),
              Text(
                '79 - 59 کیلوگرم',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.055,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
