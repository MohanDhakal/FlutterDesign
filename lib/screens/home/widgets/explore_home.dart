import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/screens/explore/page/explore_detail.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Explore extends StatelessWidget {
  final String imagePath, title, subtitle;

  const Explore(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ExploreDetail())),
      child: Container(
        width: 153.w,
        height: 210.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 4), color: Color(0x1A51515F), blurRadius: 10)
            ]),
        margin: EdgeInsets.only(left: 5, top: 5, right: 5,bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.w),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(imagePath)),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 10.w, right: 10.w, top: 10.w, bottom: 4.h),
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.w,
                right: 10.w,
              ),
              child: Text(
                subtitle,
                style: TextStyle(fontWeight: FontWeight.w100, fontSize: 12.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
