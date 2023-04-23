import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/constants/images.dart';
import 'package:weather_app/constants/styles.dart';
import 'package:weather_app/constants/typography.dart';
import 'package:weather_app/core/widgets/rich_text_span.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.primaryColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Weather Forecast', style: descriptionText.copyWith(color: Colors.white)),
        backgroundColor: ColorPalette.primaryColor,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: Styles.padding,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            padding: Styles.horizontalPadding,
            decoration: BoxDecoration(
              borderRadius: Styles.borderRadius,
              color:  ColorPalette.blurColor
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Today', style: title.copyWith(color: Colors.white)),
                    Text('Sat, 3 Aug', style: detailText.copyWith(color: Colors.white)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    RichTextSpan(
                      firstText: '32',
                      firstStyle:mainTemprature ,
                      secondText: '°C',
                    ),
                    Image.asset(Images.sunny)
                  ]
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}
