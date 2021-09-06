import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/utils/core/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardView extends StatelessWidget {
  final String imagePath;
  final String text;

  const CardView({Key? key, required this.imagePath, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 153.w,
      height: 240.h,
      margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 5.w, bottom: 15.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 7),
                color: Color(0x1A51515F),
                blurRadius: 10.r)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 10.w,
              right: 10.w,
              top: 10.h,
            ),
            child: Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(5.r),
                    child: Image.asset(
                      imagePath,
                      width: 133.w,
                      height: 133.h,
                      fit: BoxFit.cover,
                    )),
                Positioned(
                  left:7,
                  top:7,
                  child: SvgPicture.asset(
                    logo,
                    width: 16.w,
                    height: 17.h,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: 133.w,
              height: 61.h,
              margin: EdgeInsets.only(
                left: 10.w,
                right: 10.w,
                top: 8.h,
              ),
              child: Text(
                text,
                maxLines: 4,
                style: TextStyle(
                    fontSize: 10.sp, height: 1.5, fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }
}
