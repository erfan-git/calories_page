import 'package:calories_page/utils/custom_paint.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Indicators extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
      width: double.infinity,
      height: size.height * 0.35,
      constraints: BoxConstraints(minHeight: 660 * 0.35),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.20,
            child: Center(
              child:
                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                  //   child: Stack(
                  //     alignment: Alignment.bottomCenter,
                  //     children: [
                  //       Container(
                  //         width: 220,
                  //         height: 220,
                  //         child: CustomPaint(
                  //           size: Size(size.width, 80),
                  //           painter: IndicatorShape(),
                  //         ),
                  //       ),
                  //       Positioned(
                  //         left: 65,
                  //         bottom: 20,
                  //         child: Column(
                  //           children: [
                  //             Text(
                  //               '1200',
                  //               style: TextStyle(
                  //                   fontWeight: FontWeight.bold,
                  //                   color: Color(0xff3EC8BC),
                  //                   fontSize: size.width > 600
                  //                       ? size.width * 0.03
                  //                       : size.width * 0.06),
                  //             ),
                  //             Text(
                  //               '1800 کالری مجاز',
                  //               style: TextStyle(
                  //                 fontWeight: FontWeight.w600,
                  //                 color: Colors.grey[600],
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  SfRadialGauge(
                axes: [
                  RadialAxis(
                    // labelsPosition: ,
                    // ranges: [
                    //   GaugeRange(
                    //     color: Color(0xffEEEEEE),
                    //   ),
                    // ],
                    // interval: 10,
                    showLabels: false,
                    showTicks: false,
                    startAngle: 180,
                    endAngle: 0,
                    radiusFactor: 1.3,
                    canScaleToFit: true,
                    axisLineStyle: AxisLineStyle(
                      thickness: 0.2,
                      // color: const Color.fromARGB(30, 0, 169, 181),
                      color: Colors.grey[800],
                      thicknessUnit: GaugeSizeUnit.factor,
                      cornerStyle: CornerStyle.bothCurve,
                    ),
                    pointers: <GaugePointer>[
                      RangePointer(
                          value: 75.0,
                          width: 0.1,
                          sizeUnit: GaugeSizeUnit.factor,
                          cornerStyle: CornerStyle.bothCurve)
                    ],
                  )
                ],
              ),
            ),
          ),
          Row(
            textDirection: TextDirection.ltr,
            children: [
              showIndicator(
                  amount: 289, percent: 0.15, footer: 'میان وعده', size: size),
              showIndicator(
                  amount: 352, percent: 0.40, footer: 'شام', size: size),
              showIndicator(
                  amount: 256, percent: 0.25, footer: 'ناهار', size: size),
              showIndicator(
                  amount: 302, percent: 0.20, footer: 'صبحانه', size: size),
            ],
          ),
        ],
      ),
    );
  }

  Widget showIndicator({double percent, int amount, String footer, Size size}) {
    return Expanded(
      child: CircularPercentIndicator(
        radius: size.width < 300.0 ? 40 : 60,
        lineWidth: 4.0,
        percent: percent,
        curve: Curves.linear,



        progressColor: Color(0xff757575),
        backgroundColor: Color(0xffeeeeee),
        footer: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            footer,
            style: TextStyle(
              color: Color(0xff757575),
            ),
          ),
        ),
        center: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              amount.toString(),
              style: TextStyle(
                color: Color(0xff3ec8bc),
              ),
            ),
            Text(
              'cal',
              style: TextStyle(
                color: Color(0xff7d92a7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
