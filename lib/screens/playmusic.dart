import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/utils/core/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayMusicScreen extends StatelessWidget {
  PlayMusicScreen({Key? key}) : super(key: key);
  final color = Color(0xFF9797DE);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 24),
        title: Align(
          alignment: Alignment(-0.2.w, 0),
          child: Text(
            'NOW PLAYING',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 36.w),
            child: SvgPicture.asset(
              "assets/images/menu.svg",
              color: Colors.black,
              height: 17.h,
              width: 3.w,
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFFE9E9F8),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 36.h,
          ),
          Stack(children: [
            Padding(
              padding: EdgeInsets.only(
                left: 25.w,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8.r)),
                child: Image.asset(
                  "assets/images/healing.png",
                  colorBlendMode: BlendMode.color,
                  color: Color(0x33000000),
                  width: 323.w,
                  fit: BoxFit.cover,
                  // color: Colors.black,
                  height: 323.h,
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
            child: Text(
              "Healing and Blessings: Energy Cleanse Binaural …",
              style: TextStyle(fontWeight: FontWeight.w100),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w, top: 10.h),
            child: Text(
              "Healing",
              style: TextStyle(fontWeight: FontWeight.w500),
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
              inactiveColor: Colors.white,
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
          SizedBox(
            height: 30.h,
          ),

          Padding(
            padding: EdgeInsets.only(left:5.w,right:5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset(
                  "assets/images/heart.svg",
                ),
                Icon(
                  Icons.arrow_back_ios,
                  size: 23,
                ),
                Container(
                  height: 79.h,
                  width: 79.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: filterBtn,
                  ),
                  child: SizedBox(
                      height: 28.h,
                      width: 24.w,
                      child: Icon(
                        Icons.pause,
                        color: Colors.white,
                      )),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 23,
                ),
                SvgPicture.asset("assets/images/Download.svg")
              ],
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 35.w, right: 35.w),
            decoration: BoxDecoration(
                color: color,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 2.r),
                    blurRadius: 20,
                    color: Color(0x0F000000),
                  )
                ],
                borderRadius: BorderRadius.all(Radius.circular(20))),
            height: 40.h,
            width: 323.w,
            child: MaterialButton(
              onPressed: () {},
              elevation: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.timer,
                    size: 16,
                    color: Colors.white,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 5.w,top:4.h),
                    child: Center(
                      child: Text(
                        "SET TIMER",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
