import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/constants/styles.dart';
import 'package:weather_app/constants/typography.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const PrimaryButton({Key? key, required this.onPressed, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: Styles.padding,
      child: MaterialButton(onPressed: onPressed,color: ColorPalette.secondaryColor, shape:Styles.borderRadius,
        minWidth: double.infinity,
        height: 50,
        child: Text(text, style: buttonText.copyWith(color: ColorPalette.primaryColor)),


      ),
    );
  }
}
