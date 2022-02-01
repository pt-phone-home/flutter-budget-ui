import 'dart:math';

import 'package:flutter/material.dart';

class RadialPainter extends CustomPainter {
  final Color backgroundColour;
  final Color lineColour;
  final double percent;
  final double width;

  RadialPainter(this.backgroundColour,
      this.lineColour,
      this.percent,
      this.width,);

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundLine = Paint()
      ..color = backgroundColour
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    Paint completeLine = Paint()
      ..color = lineColour
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    Offset center = Offset(size.width / 2, size.height / 2);

    double radius = min(size.width / 2, size.height / 2);

    canvas.drawCircle(center, radius, backgroundLine);
    double sweepAngle = 2 * pi * percent;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius), -pi / 2, sweepAngle,
      false, completeLine);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // throw UnimplementedError();
    return true;
  }
}
