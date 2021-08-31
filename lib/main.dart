import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc_test/colors.dart';
import 'screens/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: background, statusBarBrightness: Brightness.dark));
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Helvetica'),
        home: HomeUI(),
      ),
    );
  }
}
