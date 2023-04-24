import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/constants/styles.dart';
import 'package:weather_app/constants/typography.dart';
class WeatherTypeTab extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final bool isSelected;
  const WeatherTypeTab({Key? key, required this.onTap, required this.text, required this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child:
         Padding(
          padding: Styles.padding,
          child: Text(text, style: detailText.copyWith(color: isSelected? ColorPalette.secondaryColor : Colors.white)),
        ),
    );
  }
}
