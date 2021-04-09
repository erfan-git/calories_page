import 'package:flutter/material.dart';

class Titles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.transparent,
      height: size.height * 0.05,
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(0.0, 28.0, 16, 16),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          itemList(1.0, 'کالری'),
          SizedBox(
            width: size.width * 0.04,
          ),
          itemList(0.5, 'چربی'),
          SizedBox(
            width: size.width * 0.04,
          ),
          itemList(0.5, 'آهن'),
          SizedBox(
            width: size.width * 0.04,
          ),
          itemList(0.5, 'فیبر'),
          SizedBox(
            width: size.width * 0.04,
          ),
        ],
      ),
    );
  }

  Widget itemList(double opacity, String name) {
    return Opacity(
      opacity: opacity,
      child: Container(
        // height: 4,
        // constraints: BoxConstraints(minHeight: 4),
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(30),
            right: Radius.circular(30),
          ),
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
