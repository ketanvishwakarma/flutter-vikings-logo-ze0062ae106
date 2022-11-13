import 'package:flutter/material.dart';

class RightSideHorn extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path hornPath = Path();
    hornPath.moveTo(size.width * 0.6181269, size.height * 0.0004099245);
    hornPath.cubicTo(
        size.width * 0.6181269,
        size.height * 0.0004099245,
        size.width * 0.6793859,
        size.height * 0.1935599,
        size.width * 0.6030092,
        size.height * 0.2632578);
    hornPath.cubicTo(
        size.width * 0.6030092,
        size.height * 0.2632578,
        size.width * 0.6915455,
        size.height * 0.3153182,
        size.width * 0.7139099,
        size.height * 0.3830852);
    hornPath.cubicTo(
        size.width * 0.7138997,
        size.height * 0.3830852,
        size.width * 0.8429683,
        size.height * 0.2002265,
        size.width * 0.6181269,
        size.height * 0.0004099245);
    hornPath.close();

    
    Paint hornPaint = Paint()..style = PaintingStyle.fill;
    hornPaint.color = Color(0xff07c6f9).withOpacity(1.0);
    canvas.drawPath(hornPath, hornPaint);

    Path ringPath = Path();
    ringPath.moveTo(size.width * 0.6771238, size.height * 0.4533549);
    ringPath.cubicTo(
        size.width * 0.6771238,
        size.height * 0.4533549,
        size.width * 0.7299386,
        size.height * 0.4236030,
        size.width * 0.7043705,
        size.height * 0.3752535);
    ringPath.cubicTo(
        size.width * 0.6788025,
        size.height * 0.3269040,
        size.width * 0.5985261,
        size.height * 0.2595577,
        size.width * 0.5846571,
        size.height * 0.2651672);
    ringPath.cubicTo(
        size.width * 0.5707881,
        size.height * 0.2707767,
        size.width * 0.5284647,
        size.height * 0.2956742,
        size.width * 0.5284647,
        size.height * 0.2956742);
    ringPath.cubicTo(
        size.width * 0.5284647,
        size.height * 0.2956742,
        size.width * 0.6430809,
        size.height * 0.3712945,
        size.width * 0.6771238,
        size.height * 0.4533549);
    ringPath.close();

    Paint ringPaint = Paint()..style = PaintingStyle.fill;
    ringPaint.color = Color(0xff055799).withOpacity(1.0);
    canvas.drawPath(ringPath, ringPaint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
