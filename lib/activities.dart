import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Activities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    var water = Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.fromLTRB(0, 8, 8, 8),
      // height: size.width * 0.2,
      width: size.width * 0.5 - 25,
      // constraints: BoxConstraints(minHeight: 660 * 0.35),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        shape: BoxShape.rectangle,
        color: Color(0xffdbf6ff),
      ),
      child: Row(
        textDirection: TextDirection.ltr,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/images/water.svg',
            fit: BoxFit.contain,

            height: size.width < 400 ? size.width * 0.13 : size.width * 0.2,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 32),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'آب',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.04,
                      ),
                    ),
                  )),
              RichText(
                text: TextSpan(
                  text: '7 ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.06,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' لیوان',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: size.width * 0.03,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
    var activity = Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.fromLTRB(0, 8, 8, 8),
      // height: size.width * 0.2,
      width: size.width * 0.5 - 25,
      // constraints: BoxConstraints(minHeight: 660 * 0.35),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        shape: BoxShape.rectangle,
        color: Color(0xffffeee4),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/images/activity.svg',
            fit: BoxFit.contain,
            width: size.width * 0.40,
          ),
          // SizedBox(
          //   height: size.width * 0.8,
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'فعالیت',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.04,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
            child: Align(
              alignment: Alignment.centerRight,
              child: RichText(
                text: TextSpan(
                  text: 'kcal  ',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '1200',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.06,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
    var sleep = Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.fromLTRB(8, 8, 0, 8),
      // height: size.width * 0.2,
      width: size.width * 0.5 - 25,
      // constraints: BoxConstraints(minHeight: 660 * 0.35),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        shape: BoxShape.rectangle,
        color: Color(0xfff2eaff),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/images/sleep.svg',
            fit: BoxFit.contain,
            width: size.width * 0.40,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'خواب',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.04,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 16),
            child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '07:40',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.06,
                  ),
                )),
          ),
        ],
      ),
    );
    var weight = Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.fromLTRB(8, 8, 0, 8),
      // height: size.width * 0.2,
      width: size.width * 0.5 - 25,
      // constraints: BoxConstraints(minHeight: 660 * 0.35),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        shape: BoxShape.rectangle,
        color: Color(0xffdbf6ff),
      ),
      child: Row(
        textDirection: TextDirection.ltr,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/images/weight.svg',
            fit: BoxFit.contain,

            height: size.width < 400 ? size.width * 0.07 : size.width * 0.1,
            // width: size.width * 0.2,
          ),
          // SizedBox(
          //   width: size.width * 0.12,
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 32),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'وزن',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.04,
                      ),
                    ),
                  )),
              RichText(
                text: TextSpan(
                  text: '69 ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.06,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' kg',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: size.width * 0.03,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );

    return Container(
      width: double.infinity,
      color: Colors.transparent,
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        textDirection: TextDirection.ltr,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              water,
              activity,
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              sleep,
              weight,
            ],
          ),
        ],
      ),
    );
  }
}
