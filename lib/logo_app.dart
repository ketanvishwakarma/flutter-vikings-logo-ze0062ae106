import 'package:flutter/material.dart';
import 'package:flutter_app/left_side_horn.dart';
import 'package:flutter_app/left_side_line.dart';
import 'package:flutter_app/righ_side_line.dart';
import 'package:flutter_app/right_side_horn.dart';
import 'package:sizer/sizer.dart';

class LogoApp extends StatefulWidget {
  const LogoApp({Key? key}) : super(key: key);

  @override
  State<LogoApp> createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> {
  double leftLine = 1;
  double rigthLine = 1;
  double hornOpacity = 0;

  Duration duration = Duration(milliseconds: 200);

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  void startAnimation() {
    animateLeftLine();
  }

  void restartAnimation() {
    setState(() {
      duration = Duration.zero;
      leftLine = 1;
      rigthLine = 1;
      hornOpacity = 0;
    });
    Future.delayed(Duration(milliseconds: 50)).then((_) {
      setState(() {
        duration = Duration(milliseconds: 300);
      });
    });
    startAnimation();
  }

  void animateLeftLine() {
    Future.delayed(Duration(milliseconds: 1000)).then((_) {
      setState(() {
        leftLine = 0;
      });
      animateRightLine();
    });
  }

  void animateRightLine() {
    Future.delayed(Duration(milliseconds: 300)).then((_) {
      setState(() {
        rigthLine = 0;
      });
      animateHorn();
    });
  }

  void animateHorn() {
    Future.delayed(Duration(milliseconds: 300)).then((_) {
      setState(() {
        hornOpacity = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final customPaintSize = Size(100.sp, 100.sp);
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterVikings Logo Contest'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20.h, left: 12.w),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            SizedBox(
              height: 100.h,
              width: 100.w,
            ),
            AnimatedPositioned(
              duration: duration,
              top: 100.h * leftLine,
              // right: 100.w * leftLine,
              child: CustomPaint(
                size: customPaintSize,
                painter: LeftSideLine(),
              ),
            ),
            AnimatedPositioned(
              duration: duration,
              top: 100.h * rigthLine,
              // left: 100.w * rigthLine,
              child: CustomPaint(
                size: customPaintSize,
                painter: RightSideLine(),
              ),
            ),
            AnimatedOpacity(
              duration: duration,
              opacity: hornOpacity,
              child: CustomPaint(
                size: customPaintSize,
                painter: LeftSideHorn(),
              ),
            ),
            AnimatedOpacity(
              duration: duration,
              opacity: hornOpacity,
              child: CustomPaint(
                size: customPaintSize,
                painter: RightSideHorn(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: restartAnimation,
        child: Icon(
          Icons.refresh,
          color: Colors.black,
        ),
      ),
    );
  }
}
