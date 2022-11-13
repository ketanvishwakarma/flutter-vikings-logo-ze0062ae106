import 'package:flutter/material.dart';

class RightSideLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path linePath = Path();
    linePath.moveTo(size.width * 0.3486899, size.height * 0.1768393);
    linePath.lineTo(size.width * 0.1589253, size.height * 0.3768393);
    linePath.lineTo(size.width * 0.6858035, size.height * 0.9321359);
    linePath.cubicTo(
        size.width * 0.7096725,
        size.height * 0.9572923,
        size.width * 0.7504708,
        size.height * 0.9394714,
        size.width * 0.7504708,
        size.height * 0.9039051);
    linePath.lineTo(size.width * 0.7504708, size.height * 0.5603668);
    linePath.cubicTo(
        size.width * 0.7504708,
        size.height * 0.5497735,
        size.width * 0.7464790,
        size.height * 0.5396224,
        size.width * 0.7393756,
        size.height * 0.5321359);
    linePath.lineTo(size.width * 0.4022620, size.height * 0.1768393);
    linePath.cubicTo(
        size.width * 0.3874616,
        size.height * 0.1612406,
        size.width * 0.3634800,
        size.height * 0.1612406,
        size.width * 0.3486899,
        size.height * 0.1768393);
    linePath.close();

    Paint linePaint = Paint()..style = PaintingStyle.fill;
    linePaint.color = Color(0xff07c6f9).withOpacity(1.0);
    canvas.drawPath(linePath, linePaint);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.3754759, size.height * 0.6050593);
    path_2.lineTo(size.width * 0.1589253, size.height * 0.3768393);
    path_2.lineTo(size.width * 0.2962129, size.height * 0.6885976);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.shader = LinearGradient(
      colors: [
        Color(0xff000000),
        Color(0xff000000).withOpacity(.02),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ).createShader(Rect.fromPoints(
      Offset(size.width * 0.6401248, size.height * 0.7955794),
      Offset(size.width * 0.2781638, size.height * -6.079992),
    ));
    canvas.drawPath(path_2, paint_2_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}