// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:syncfusion_flutter_charts/sparkcharts.dart';
// import 'package:weather_app/constants/colors.dart';
//
// class WeatherGraph extends StatelessWidget {
//   const WeatherGraph({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       child: SfCartesianChart(
//         borderColor: Colors.transparent,
//         plotAreaBorderColor: Colors.transparent,
//
//         primaryXAxis: CategoryAxis(),
//         series: <ChartSeries>[
//           LineSeries<WeatherData, String>(
//             color: ColorPalette.secondaryColor,
//             dashArray: [5, 5],
//
//             dataSource: [
//               WeatherData('Sunny', DateTime(2021, 1, 1)),
//               WeatherData('Sunny', DateTime(2021, 1, 2)),
//               WeatherData('Sunny', DateTime(2021, 1, 3)),
//               WeatherData('Sunny', DateTime(2021, 1, 4)),
//               WeatherData('Sunny', DateTime(2021, 1, 5)),
//             ],
//             // yValueMapper: (WeatherData weather, _) => weather.weatherType.toString(),
//             // xValueMapper: (WeatherData weather, _) => weather.dateTime.day,
//             xValueMapper: (WeatherData weather, _) => weather.weatherType,
//             yValueMapper: (WeatherData weather, _) => weather.dateTime.day,
//             dataLabelSettings: DataLabelSettings(isVisible: true),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class WeatherData {
//   WeatherData(this.weatherType, this.dateTime);
//
//   final String weatherType;
//
//   final DateTime dateTime;
// }

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:weather_app/constants/colors.dart';

class WeatherGraph extends StatelessWidget {
  const WeatherGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: LineChart(
        LineChartData(
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (dateTime, titleMeta) {
                  return Text(
                    dateTime.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  );
                },
                interval: 1,
                reservedSize: 30,
              ),
            ),
          ),
          borderData: FlBorderData(
              show: true,
              border: Border.all(color: Colors.transparent, width: 1)),
          minX: 0,
          maxX: 11,
          minY: 0,
          maxY: 6,
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 3),
                FlSpot(2.6, 2),
                FlSpot(4.9, 5),
                FlSpot(6.8, 3.1),
                FlSpot(8, 4),
                FlSpot(9.5, 3), FlSpot(11, 4),
              ],
              isCurved: true,
              color: ColorPalette.secondaryColor,
              barWidth: 1,
              isStrokeCapRound: true,
              dotData: FlDotData(
                show: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
