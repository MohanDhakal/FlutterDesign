import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Popular extends StatelessWidget {
  final String imageUri;
  final String title;
  final String description;

  const Popular({
    Key? key,
    required this.imageUri,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145.w,
      height: 244.h,
      margin: EdgeInsets.only(right: 10.w, bottom: 10.h,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
          // borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(5.r), topRight: Radius.circular(5.r)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 6.r,
                color: Color(0xFF1A000000)),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 145.w,
                height: 128.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.r), topRight: Radius.circular(5.r)),
                    image: DecorationImage(
                        fit: BoxFit.none,
                        image: AssetImage(
                          "assets/images/songsnepal/home/image.png",
                        )),
                    // color: Colors.blue,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 3),
                        blurRadius: 20.r,
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
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Hits of the moment",
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Top 50 biggest hits in the world right now.",
              style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }
}
