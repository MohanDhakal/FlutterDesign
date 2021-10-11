import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double fromLeftImage = -100.w;
  double fromTopImage = 352.h;
  double fromLeftText = 374.w;
  double fromTopText = 405.h;
  bool flag = false;
  static const Cubic easeOutBackCustom = Cubic(0.175, 0.885, 0.32, 1.075);

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(milliseconds: 2500),
    ).then((value) {
      setState(() {
        flag = !flag;
      });
      Future.delayed(Duration(milliseconds: 1000)).then((value){
        Get.offNamed("/OnBoardingPage");
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300.h,
        width: 375.w,
        color: Color(0xFFF8F8F8),
        child: Column(
          children: [
            SizedBox(
              width: 375.w,
              height: 200.h,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  AnimatedPositioned(
                      duration: Duration(milliseconds: 1000),
                      curve: easeOutBackCustom,
                      top: fromTopImage,
                      left: flag ? 127.w : -100.w,
                      child:
                          SvgPicture.asset("assets/images/songsnepal/1.svg")),
                  AnimatedPositioned(
                      duration: Duration(milliseconds: 1000),
                      curve: easeOutBackCustom,
                      top: fromTopText,
                      left: flag ? 115.w : 374.w,
                      child:
                          SvgPicture.asset("assets/images/songsnepal/2.svg")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
