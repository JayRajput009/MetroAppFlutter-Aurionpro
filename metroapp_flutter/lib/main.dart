import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:metroapp_flutter/features/authentication/ui/screen/loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double width = screenSize.width;
    final double height = screenSize.height;
    return ScreenUtilInit(
      designSize: Size(width, height),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Loginscreen(),
      ),
    );
  }
}
