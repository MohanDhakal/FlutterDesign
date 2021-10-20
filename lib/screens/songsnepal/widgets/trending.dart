import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrendingItem extends StatelessWidget {
  final String imageUri;
  final String labelText;
  final String totalTracks;
  final String totalDuration;

  const TrendingItem(
      {Key? key,
      required this.imageUri,
      required this.labelText,
      required this.totalTracks,
      required this.totalDuration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145.w,
      height: 188.h,
      // color: Colors.red,
      padding: EdgeInsets.only(right: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 145.h,
                height: 142.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    image: DecorationImage(
                        fit: BoxFit.none,
                        image: AssetImage(
                          "$imageUri",
                        )),
                    color: Colors.blue,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 3),
                        blurRadius: 10.r,
                        // spreadRadius: 4.r,
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
            ],
          ),
          SizedBox(
            height: 10.h,
          ),

          Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: Text(
              "$labelText",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          // SizedBox(height: 10.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$totalDuration",
                style: TextStyle(
                    color: Color(0xFF757575),
                    fontWeight: FontWeight.w300,
                    fontSize: 11.sp),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Icon(
                  Icons.circle,
                  size: 4.w,
                  color: Colors.black45,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  "$totalTracks",
                  style: TextStyle(
                      color: Color(0xFF757575),
                      fontWeight: FontWeight.w300,
                      fontSize: 11.sp),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
