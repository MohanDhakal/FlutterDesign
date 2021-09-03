import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Favorites extends StatefulWidget {
  final String text, imagePath;

  const Favorites({Key? key, required this.text, required this.imagePath})
      : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  bool selected = false;

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
          blurRadius: 10.r,
        )
      ], color: Colors.white, borderRadius: BorderRadius.circular(6.r)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 5.w, right: 15.w, top: 5.h, bottom: 5.h),
                child: Image.asset(
                  widget.imagePath,
                  height: 46.h,
                  width: 46.w,
                ),
              )),
          Container(
            width: 200.w,
            height: 46.h,
            margin: EdgeInsets.only(top: 5.h, bottom: 5.h, right: 14.w),
            child: Text(
              widget.text,
              maxLines: 3,
              style: TextStyle(
                  fontWeight: FontWeight.w400, height: 1.5, fontSize: 10.sp),
            ),
          ),
          GestureDetector(
            onTap: () => setState(() => selected = !selected),
            child: SvgPicture.asset(
              "assets/images/heart.svg",
              height: 20.h,
              color: selected ? Color(0xFF9797DE) : null,
              width: 20.w,
            ),
          )
        ],
      ),
    );
  }
}
