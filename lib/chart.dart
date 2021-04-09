import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ChartState();
}

class ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AspectRatio(
      aspectRatio: 328 / 150,
      child: Container(
        margin: EdgeInsets.fromLTRB(16, 8, 16, 16),
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
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: BarChart(
                BarChartData(
                  gridData: FlGridData(
                    checkToShowHorizontalLine: (value) => value == 700.0,
                    getDrawingHorizontalLine: (value){
                      return FlLine(
                        color: const Color(0xffe0efff),
                        strokeWidth: 2,
                      );
                    }
                  ),
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 2000,
                  barTouchData: BarTouchData(
                    enabled: true,
                    touchTooltipData: BarTouchTooltipData(
                      tooltipBgColor: Colors.transparent,
                      tooltipPadding: const EdgeInsets.fromLTRB(0,0,8,0),
                      tooltipMargin: 8,
                      getTooltipItem: (
                        BarChartGroupData group,
                        int groupIndex,
                        BarChartRodData rod,
                        int rodIndex,
                      ) {
                        return BarTooltipItem(
                            rod.y.round().toString(),
                            rod.y.round() == 1062
                                ? TextStyle(
                                    color: Color(0xff27496d),
                                    fontWeight: FontWeight.normal,
                                    fontSize: size.width * 0.05)
                                : TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ));
                      },
                    ),
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: SideTitles(
                      // checkToShowTitle: (){},
                      showTitles: true,
                      getTextStyles: (value) => const TextStyle(
                        color: Color(0xff27496d),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      margin: size.width<300 ? 4 : 8,
                      getTitles: (double value) {
                        switch (value.toInt()) {
                          case 0:
                            return '22';
                          case 1:
                            return '23';
                          case 2:
                            return '24';
                          case 3:
                            return '25';
                          case 4:
                            return '26';
                          case 5:
                            return '27';
                          case 6:
                            return '28';
                          default:
                            return '';
                        }
                      },
                    ),
                    topTitles: SideTitles(),
                    leftTitles: SideTitles(showTitles: false),
                  ),
                  borderData: FlBorderData(
                    border: Border(bottom: BorderSide()),
                    show: true,
                  ),
                  barGroups: [
                    BarChartGroupData(
                      x: 0,
                      barRods: [
                        BarChartRodData(
                          width: size.width * 0.03,
                          colors: [Colors.white],
                          rodStackItems: [
                            BarChartRodStackItem(0, 700, Color(0xff3ec8bc)),
                            BarChartRodStackItem(700, 2000, Color(0xfffe9c5e)),
                          ],
                          y: 1010,
                        )
                      ],
                      showingTooltipIndicators: [0],
                    ),
                    BarChartGroupData(
                      x: 1,
                      barRods: [
                        BarChartRodData(
                          width: size.width * 0.03,
                          colors: [Colors.white],
                          rodStackItems: [
                            BarChartRodStackItem(0, 700, Color(0xff3ec8bc)),
                            BarChartRodStackItem(700, 2000, Color(0xfffe9c5e)),
                          ],
                          y: 400,
                        )
                      ],
                      showingTooltipIndicators: [0],
                    ),
                    BarChartGroupData(
                      x: 2,
                      barRods: [
                        BarChartRodData(
                          width: size.width * 0.03,
                          colors: [Colors.white],
                          rodStackItems: [
                            BarChartRodStackItem(0, 700, Color(0xff3ec8bc)),
                            BarChartRodStackItem(700, 2000, Color(0xfffe9c5e)),
                          ],
                          y: 900,
                        )
                      ],
                      showingTooltipIndicators: [0],
                    ),
                    BarChartGroupData(
                      x: 3,
                      barRods: [
                        BarChartRodData(
                          width: size.width * 0.03,
                          colors: [Colors.white],
                          rodStackItems: [
                            BarChartRodStackItem(0, 700, Color(0xff3ec8bc)),
                            BarChartRodStackItem(700, 2000, Color(0xfffe9c5e)),
                          ],
                          y: 1000,
                        )
                      ],
                      showingTooltipIndicators: [0],
                    ),
                    BarChartGroupData(
                      x: 4,
                      barRods: [
                        BarChartRodData(
                          width: size.width * 0.03,
                          colors: [Colors.white],
                          rodStackItems: [
                            BarChartRodStackItem(0, 700, Color(0xff3ec8bc)),
                            BarChartRodStackItem(700, 2000, Color(0xfffe9c5e)),
                          ],
                          y: 650,
                        )
                      ],
                      showingTooltipIndicators: [0],
                    ),
                    BarChartGroupData(
                      x: 5,
                      barRods: [
                        BarChartRodData(
                          width: size.width * 0.03,
                          colors: [Colors.white],
                          rodStackItems: [
                            BarChartRodStackItem(0, 700, Color(0xff3ec8bc)),
                            BarChartRodStackItem(700, 2000, Color(0xfffe9c5e)),
                          ],
                          y: 400,
                        )
                      ],
                      showingTooltipIndicators: [0],
                    ),
                    BarChartGroupData(
                      x: 6,
                      barRods: [
                        BarChartRodData(
                          width: size.width * 0.03,
                          colors: [Colors.white],
                          rodStackItems: [
                            BarChartRodStackItem(0, 700, Color(0xff3ec8bc)),
                            BarChartRodStackItem(700, 2000, Color(0xfffe9c5e)),
                          ],
                          y: 1062,
                        )
                      ],
                      showingTooltipIndicators: [0],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
