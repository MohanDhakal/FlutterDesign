import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoarding1 extends StatelessWidget {
  final void Function(int) onButtonTapped;


  OnBoarding1({
    Key? key,
    required this.onButtonTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Material(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF8C37F6), Color(0xFF1431FB)])),
        child: Stack(
          children: [
            SizedBox(
              width: 375.w,
              height: 500.h,
              child: SvgPicture.asset(
                "assets/images/songsnepal/customshape1.svg",
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 78.h,
              left: 52.w,
              child: SvgPicture.asset(
                "assets/images/songsnepal/musicrafiki1.svg",
                width: 272.w,
                height: 293.h,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 450.h,
              child: Container(
                width: 375.w,
                decoration: BoxDecoration(
                  // color: Colors.blue,
                  // border: Border.all(),
                  // borderRadius:
                  //     BorderRadius.only(topLeft: Radius.elliptical(10, 10))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100.h,
                    ),
                    SizedBox(
                      height: 27.h,
                      width: 162.w,
                      child: Text(
                        "Enjoy Your Music",
                        style: TextStyle(fontSize: 21.sp, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                        width: 208.w,
                        height: 66.h,
                        child: Text(
                          "Discover your favorite songs from thousands of Nepali Songs in music library.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white54,
                          ),
                        )),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Skip",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18.sp),
                        ),
                        SizedBox(
                          child: DotsIndicator(
                            dotsCount: 3,
                            position: 0,
                            decorator: DotsDecorator(
                              size: const Size.square(9.0),
                              activeSize: const Size(36.0, 9.0),
                              color: Colors.white,
                              activeColor: Colors.white,
                              activeShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            onButtonTapped(1);
                          },
                          child: Container(
                            height: 49.w,
                            width: 49.w,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


  List<Widget> slidableWidget(shapeImageUri,personImageUri) {
    var list = [ SizedBox(
      width: 375.w,
      height: 500.h,
      child: SvgPicture.asset(
        "assets/images/songsnepal/customshape1.svg",
        fit: BoxFit.fill,
      ),
    ),
      Positioned(
        top: 78.h,
        left: 52.w,
        child: SvgPicture.asset(
          "assets/images/songsnepal/musicrafiki1.svg",
          width: 272.w,
          height: 293.h,
          fit: BoxFit.cover,
        ),
      ),
    ];
    return list;
  }
}