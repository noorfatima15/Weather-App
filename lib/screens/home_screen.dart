import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/constants/images.dart';
import 'package:weather_app/constants/styles.dart';
import 'package:weather_app/constants/typography.dart';
import 'package:weather_app/core/widgets/rich_text_span.dart';
import 'package:weather_app/core/widgets/weather_detail_tile.dart';
import 'package:weather_app/core/widgets/weather_type_tab.dart';
import 'package:weather_app/screens/weather_graph.dart';
// import 'package:fl_chart/fl_chart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.primaryColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Weather Forecast',
            style: descriptionText.copyWith(color: Colors.white)),
        backgroundColor: ColorPalette.primaryColor,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.location_city_outlined,
                  color: ColorPalette.secondaryColor))
        ],
      ),
      body: ListView(
        padding: Styles.padding,
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.3,
              padding: Styles.horizontalPadding,
              decoration: BoxDecoration(
                  borderRadius: Styles.borderRadius,
                  color: ColorPalette.blurColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Today', style: title.copyWith(color: Colors.white)),
                      Text('Sat, 3 Aug',
                          style: detailText.copyWith(color: Colors.white)),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichTextSpan(
                          firstText: '32',
                          firstStyle: mainTemprature,
                          secondText: '°C',
                        ),
                        Image.asset(Images.sunny)
                      ]),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined,
                          color: ColorPalette.secondaryColor),
                      Text('Lagos, Nigeria',
                          style: detailText.copyWith(color: Colors.white)),
                    ],
                  ),
                ],
              )),
          Row(
            children: [
              WeatherTypeTab(onTap: () {}, text: 'Today', isSelected: true),
              WeatherTypeTab(onTap: () {}, text: 'Tomorrow', isSelected: false),
              WeatherTypeTab(
                  onTap: () {}, text: 'Next 7 Days', isSelected: false),
            ],
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.16,
              child: ListView.builder(
                  itemCount: 5,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => WeatherDetailTile())),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Text('Chance Of Rain', style: title.copyWith(color: Colors.white)),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: WeatherGraph(),
          )
          // child: LineChart(
          //
          //     LineChartData(
          //       lineTouchData: LineTouchData(enabled: false),
          //       gridData: FlGridData(show: false),
          //       titlesData: FlTitlesData(
          //
          //         show: true,),
          //       borderData: FlBorderData(show: false),
          //       lineBarsData: [
          //
          //         LineChartBarData(
          //
          //             spots: [
          //
          //               FlSpot(0, 0),
          //               FlSpot(1, 1),
          //               FlSpot(2, 1.5),
          //               FlSpot(3, 1.4),
          //               FlSpot(4, 3),
          //               FlSpot(5, 2),
          //               FlSpot(6, 4),
          //             ],
          //             isCurved: true,
          //             color: ColorPalette.secondaryColor,
          //             barWidth: 1),
          //       ],
          //     ))),
        ],
      ),
    );
  }
}
