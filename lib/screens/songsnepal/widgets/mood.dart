import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Mood extends StatelessWidget {
  const Mood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 144.w,
          height: 76.h,
          margin: EdgeInsets.only(right: 15.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              image: DecorationImage(
                  fit: BoxFit.none,
                  image: AssetImage(
                    "assets/images/songsnepal/home/img.png",
                  )),
              // color: Colors.blue,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 20.r,
                  spreadRadius: 4.r,
                  color: Color(0x1A000000),
                )
              ]),
        ),
        Positioned(
            top: 10.h,
            left: 5.w,
            child: SvgPicture.asset(
              "assets/images/songsnepal/home/1.svg",
              color: Colors.white,
            )),
        Positioned(
          top: 30,
          left: 35,
          child: Text(
            "Romantic",
            style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white),
          ),
        )
      ],
    );
  }
}
