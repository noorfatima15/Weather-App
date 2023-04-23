import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/constants/typography.dart';

class RichTextSpan extends StatelessWidget {
  final String firstText;
  final String secondText;
  final TextStyle? firstStyle;
  final TextStyle? secondStyle;
  const RichTextSpan({Key? key, required this.firstText, required this.secondText, this.firstStyle, this.secondStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: firstText,
          style: firstStyle??mainHeader,
          children: [
            TextSpan(
                text: secondText,
                style: secondStyle??mainHeader.copyWith(color: ColorPalette.secondaryColor)
            )
          ]
      ),
    );
  }
}
