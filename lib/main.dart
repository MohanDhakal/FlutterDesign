import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc_test/utils/core/colors.dart';
import 'package:flutter_bloc_test/screens/explore/page/explore_detail.dart';
import 'package:flutter_bloc_test/screens/test.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'screens/home/page/home.dart';
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
      builder: () => GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        // color: background,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            accentColor: background,
            fontFamily: 'HelveticaNeue'),
        home: HomeUI(),
      ),
    );
  }
}
