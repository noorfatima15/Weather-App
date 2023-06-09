import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/constants/images.dart';
import 'package:weather_app/constants/strings.dart';
import 'package:weather_app/constants/styles.dart';
import 'package:weather_app/constants/typography.dart';
import 'package:weather_app/core/widgets/primary_button.dart';
import 'package:weather_app/core/widgets/rich_text_span.dart';
import 'package:weather_app/screens/home_screen.dart';
import 'package:weather_app/utils/line_painter.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.primaryColor,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Center(
            child: CustomPaint(
              painter: LinePainter(),
              child: Center(
                child: Image.asset(
                  Images.welcomeScreenImage,
                  width: 300,
                  height: 300,
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          const Padding(
            padding: Styles.descriptionPadding,
            child:
                RichTextSpan(firstText: 'Weather ', secondText: 'News & Feed'),
          ),
          Padding(
            padding: Styles.descriptionPadding,
            child: Text(Strings.descriptionText,
                style: descriptionText.copyWith(color: Colors.white),
                textAlign: TextAlign.center),
          ),
          PrimaryButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              text: 'Get Started'),
        ],
      ),
    );
  }
}
