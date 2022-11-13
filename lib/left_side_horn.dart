import 'package:flutter/material.dart';

class LeftSideHorn extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
        Path hornPath = Path();
    hornPath.moveTo(size.width * 0.1327124, size.height * 0.0004099245);
    hornPath.cubicTo(
        size.width * 0.1327124,
        size.height * 0.0004099245,
        size.width * 0.07145343,
        size.height * 0.1935599,
        size.width * 0.1478301,
        size.height * 0.2632578);
    hornPath.cubicTo(
        size.width * 0.1478301,
        size.height * 0.2632578,
        size.width * 0.05929376,
        size.height * 0.3153182,
        size.width * 0.03692938,
        size.height * 0.3830852);
    hornPath.cubicTo(
        size.width * 0.03692938,
        size.height * 0.3830852,
        size.width * -0.09213920,
        size.height * 0.2002265,
        size.width * 0.1327124,
        size.height * 0.0004099245);
    hornPath.close();

    Paint hornPaint = Paint()..style = PaintingStyle.fill;
    hornPaint.color = Color(0xff055799).withOpacity(1.0);
    canvas.drawPath(hornPath, hornPaint);

    Path ringPath = Path();
    ringPath.moveTo(size.width * 0.07371546, size.height * 0.4533549);
    ringPath.cubicTo(
        size.width * 0.07371546,
        size.height * 0.4533549,
        size.width * 0.02090072,
        size.height * 0.4236030,
        size.width * 0.04646878,
        size.height * 0.3752535);
    ringPath.cubicTo(
        size.width * 0.07203685,
        size.height * 0.3269040,
        size.width * 0.1523132,
        size.height * 0.2595577,
        size.width * 0.1661822,
        size.height * 0.2651672);
    ringPath.cubicTo(
        size.width * 0.1800512,
        size.height * 0.2707767,
        size.width * 0.2223746,
        size.height * 0.2956742,
        size.width * 0.2223746,
        size.height * 0.2956742);
    ringPath.cubicTo(
        size.width * 0.2223746,
        size.height * 0.2956742,
        size.width * 0.1077584,
        size.height * 0.3712945,
        size.width * 0.07371546,
        size.height * 0.4533549);
    ringPath.close();

    // left ring
    Paint ringPaint = Paint()..style = PaintingStyle.fill;
    ringPaint.color = Color(0xff07c6f9).withOpacity(1.0);
    canvas.drawPath(ringPath, ringPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
