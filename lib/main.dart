import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc_test/screens/maps/map.dart';
import 'package:flutter_bloc_test/screens/playmusic.dart';
import 'package:flutter_bloc_test/screens/songsnepal/genre_list.dart';
import 'package:flutter_bloc_test/screens/songsnepal/home.dart';
import 'package:flutter_bloc_test/screens/songsnepal/spalshscreen.dart';
import 'package:flutter_bloc_test/screens/songsnepal/test.dart';
import 'package:flutter_bloc_test/utils/core/colors.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:location/location.dart';
import 'screens/home/page/home.dart';
import 'screens/songsnepal/favorites.dart';

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
          routes: <String, WidgetBuilder>{
            '/OnBoardingPage': (BuildContext context) => OnBoardingTest(),
            '/SplashScreen': (BuildContext context) => SplashScreen(),
            '/ChooseFavouriteScreen': (BuildContext context) =>
                ChooseFavourites()
          },
          // color: background,
          theme: ThemeData(
              primarySwatch: Colors.blue,
              accentColor: background,
              fontFamily: 'Sofia Pro'),
          home: GenreList()),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Google Maps Demo"),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => GoogleMapScreen()));
                },
                child: Center(child: Icon(Icons.golf_course))),
            SizedBox(
              height: 50,
            ),
            Text("Modal Sheet Demo"),
            GestureDetector(
                onTap: () {}, child: Center(child: Icon(Icons.engineering)))
          ],
        ),
      ),
    );
  }
}
