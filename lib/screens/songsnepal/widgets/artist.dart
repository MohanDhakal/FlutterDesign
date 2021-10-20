import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Artist extends StatelessWidget {
  const Artist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 119.w,
          height: 119.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("assets/images/songsnepal/home/VEK-bibek-waiba.png"),
              fit: BoxFit.none
            )
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top:15.h),
          child: Text(
            "Vek",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
          ),
        ),
        Text("10000 fans",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11.sp)),
      ],
    );
  }
}
