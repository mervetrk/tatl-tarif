import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class LineChartSample4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const cutOffYValue = 5.0;
    const dateTextStyle =
    TextStyle(fontSize: 15, color: Colors.purple, fontWeight: FontWeight.bold);

    return Scaffold(
      backgroundColor: Colors.red.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade600,
        centerTitle: true,
        title: Text('Tatlıların Sevilme Grafiği',
          style: TextStyle(color: Colors.black),),),
      body: SizedBox(
        width: 400,
        height: 300,
        child: LineChart(
          LineChartData(
            lineTouchData: LineTouchData(enabled: true),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(1, 5),
                  FlSpot(2, 3),
                  FlSpot(3, 4),
                  FlSpot(4, 2),
                ],
                isCurved: true,
                barWidth: 10,
                colors: [
                  Colors.purpleAccent,
                ],
                belowBarData: BarAreaData(
                  show: true,
                  colors: [Colors.deepPurple.withOpacity(0.4)],
                  cutOffY: cutOffYValue,
                  applyCutOffY: false,
                ),
                aboveBarData: BarAreaData(
                  show: true,
                  colors: [Colors.orange.withOpacity(0.6)],
                  cutOffY: cutOffYValue,
                  applyCutOffY: true,
                ),
                dotData: FlDotData(
                  show: false,
                ),
              ),
            ],
            minY: 1,
            titlesData: FlTitlesData(
              bottomTitles: SideTitles(
                  showTitles: true,
                  margin: 5,
                  reservedSize: 14,
                  getTextStyles: (value) => dateTextStyle,
                  getTitles: (value) {
                    switch (value.toInt()) {
                      case 1:
                        return 'Şerbetli Tatlı';
                      case 2:
                        return 'Kurabiye';
                      case 3:
                        return 'Sütlü Tatlı';
                      case 4:
                        return 'Kek';
                      default:
                        return '';
                    }
                  }),
              leftTitles: SideTitles(
                showTitles: true,
                margin: 5,
                getTitles: (value) {
                  return '\ ${value + 0.0}';
                },
              ),
            ),
            axisTitleData: FlAxisTitleData(
                leftTitle: AxisTitle(showTitle: true, titleText: 'Sevilme Oranı', margin: 4),
                bottomTitle: AxisTitle(
                    showTitle: true,
                    margin: 5,
                    titleText: '2021',
                    textStyle: dateTextStyle,
                    textAlign: TextAlign.right)),
            gridData: FlGridData(
              show: true,
              checkToShowHorizontalLine: (double value) {
                return value == 1 || value == 6 || value == 4 || value == 5;
              },
            ),
          ),
        ),
      ),
    );
  }
}