import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoarding2 extends StatelessWidget {
  final void Function(int) onButtonTapped;

  OnBoarding2({
    Key? key,
    required this.onButtonTapped,

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF8C37F6), Color(0xFF1431FB)])),
        child: Stack(
          children: [
            Container(
              width: 375.w,
              height: 502.h,
              // color: Colors.red,
              child: Image.asset(
                "assets/images/songsnepal/customshape2.png",
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 78.h,
              left: 52.w,
              child: SvgPicture.asset(
                "assets/images/songsnepal/playlistrafiki2.svg",
                width: 269.w,
                height: 252.h,
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
                        "Save & Play Songs Offline",
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
                          "Download & enjoy listening music even without internet connection - data or wi-fi.",
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
                          style:
                          TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 18.sp),
                        ),
                        SizedBox(
                          child: DotsIndicator(
                            dotsCount: 3,
                            position: 1,
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
                            onButtonTapped(2);
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
}

class MyCustomClipper extends CustomClipper<Path> {
  double width;
  MyCustomClipper({required this.width});
  @override
  Path getClip(Size size) {
    // var controlPoint1 = Offset(50, size.height - 100);
    // var controlPoint2 = Offset(size.width - 50, size.height);
    // var endPoint = Offset(size.width, size.height - 50);

    Path path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(0, size.height - 50)
      ..arcToPoint(Offset(size.width / 2, 0))
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
