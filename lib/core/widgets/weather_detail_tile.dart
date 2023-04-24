import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/constants/images.dart';
import 'package:weather_app/constants/styles.dart';
import 'package:weather_app/constants/typography.dart';
import 'package:weather_app/core/widgets/rich_text_span.dart';
class WeatherDetailTile extends StatelessWidget {
  const WeatherDetailTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.005,
      width: MediaQuery.of(context).size.width * 0.3,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: Styles.padding,
      decoration: BoxDecoration(
        borderRadius: Styles.borderRadius,
        color: ColorPalette.blurColor,

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Spacer(), Image.asset(Images.thunderStorm)
            ],
          ),
          Text('10 AM', style: detailText.copyWith(color: Colors.white)),
          RichTextSpan(firstText: '26', secondText: '°C',
            firstStyle: buttonText,
            secondStyle: tileUnitStyle.copyWith(color: ColorPalette.secondaryColor),
          )
        ],
      ),
    );
  }
}
