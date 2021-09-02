import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Favorites extends StatelessWidget {
  final String text, imagePath;

  const Favorites({Key? key, required this.text, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 323.w,
      height: 66.h,
      margin: EdgeInsets.all(5.w),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(0, 4),
            color: Color(0x1A51515F),
            blurRadius: 10.r,)
      ], color: Colors.white, borderRadius: BorderRadius.circular(6.r)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Padding(
                padding: EdgeInsets.all(10.w),
                child: Image.asset(
                  imagePath,
                  height: 46.h,
                  width: 46.w,
                ),
              )),
          Container(
            width: 200.w,
            height: 46.h,
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              text,
              maxLines: 3,
              style: TextStyle(
                  fontWeight: FontWeight.w400, height: 1.5,
                  fontSize: 10.sp),
            ),
          ),
          Icon(Icons.star_purple500)
        ],
      ),
    );
  }
}
