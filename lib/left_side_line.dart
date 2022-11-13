import 'package:flutter/material.dart';


class LeftSideLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path linePath = Path();
    linePath.moveTo((size.width * 0.4013204), (size.height * 0.1758468));
    linePath.lineTo(size.width * 0.5920164, size.height * 0.3768393);
    linePath.lineTo(size.width * 0.06513818, size.height * 0.9321359);
    linePath.cubicTo(
        size.width * 0.04126919,
        size.height * 0.9572923,
        size.width * 0.0004708291,
        size.height * 0.9394714,
        size.width * 0.0004708291,
        size.height * 0.9039051);
    linePath.lineTo(
        size.width * 0.0004708291, size.height * 0.5603668);
    linePath.cubicTo(
        size.width * 0.0004708291,
        size.height * 0.5497735,
        size.width * 0.004462641,
        size.height * 0.5396224,
        size.width * 0.01156602,
        size.height * 0.5321359);
    linePath.lineTo(
        size.width * 0.3496213, size.height * 0.1758468);
    linePath.cubicTo(
        size.width * 0.3638997,
        size.height * 0.1608091,
        size.width * 0.3870420,
        size.height * 0.1608091,
        size.width * 0.4013204,
        size.height * 0.1758468);
    linePath.close();

    Paint linePaint = Paint()..style = PaintingStyle.fill;
    linePaint.color = Color(0xff055799).withOpacity(1.0);
    canvas.drawPath(linePath, linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
