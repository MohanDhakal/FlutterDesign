import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/utils/core/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayMusicScreen extends StatelessWidget {
  const PlayMusicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.keyboard_arrow_down, color: Colors.black),
        title: Center(
          child: Text(
            'NOW PLAYING',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 16),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25.w),
            child: SvgPicture.asset(
              "assets/images/menu.svg",
              color: Colors.black,
              height: 15,
              width: 15,
            ),
          ),
        ],
      ),
      backgroundColor: background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Padding(
              padding: EdgeInsets.only(
                left: 25.w,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  "assets/images/healing.png",
                  width: 320.w,
                  fit: BoxFit.cover,
                  // color: Colors.black,
                  height: 350.h,
                ),
              ),
            ),
            Positioned(
              top: 15.w,
              left: 40.w,
              child: SvgPicture.asset(
                "assets/images/meditate.svg",
                height: 18.w,
                color: Colors.white,
                width: 13.w,
              ),
            ),
          ]),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: Text("Healing and Blessing:Energy cleaning Binural"),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w,top: 10.h),
            child: Text(
              "Healing",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 20.h,
            child: Slider(
              value: 0.5,
              onChanged: (value) {},
              activeColor: filterBtn,
              inactiveColor:Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w, right: 25.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '5:57',
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
                ),
                Text(
                  '10:00',
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                "assets/images/heart.svg",
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                  ),
                  Image.asset("assets/images/play.png",
                      height: 80.w, width: 80.w, fit: BoxFit.cover),
                  Icon(
                    Icons.arrow_forward_ios,
                  ),
                ],
              ),
              SvgPicture.asset("assets/images/Download.svg")
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 35.w, right: 35.w),
            decoration: BoxDecoration(
                color: filterBtn,
                borderRadius: BorderRadius.all(Radius.circular(24))),
            height: 50.h,
            child: MaterialButton(
              onPressed: () {},
              elevation: 0,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.timer,
                      size: 16,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "SET TIMER",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
