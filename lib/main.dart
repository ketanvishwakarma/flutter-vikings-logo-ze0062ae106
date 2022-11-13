import 'package:flutter/material.dart';
import 'package:flutter_app/logo_app.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return MaterialApp(
          darkTheme: ThemeData.dark(),
          theme: ThemeData.light(),
          home: const LogoApp(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

void main() {
  runApp(MyApp());
}
