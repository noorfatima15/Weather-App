import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors.dart';

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final p1 = Offset(size.width, 0);
    final p2 = Offset(0, size.height);
    final paint = Paint();
    paint.shader = LinearGradient(
      colors: [ColorPalette.primaryColor.withOpacity(0.1),Colors.white.withOpacity(0.1), ColorPalette.primaryColor.withOpacity(0.1)],
    ).createShader(Rect.fromPoints(p1, p2));
    paint.strokeWidth = 140;

    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) => false;
}