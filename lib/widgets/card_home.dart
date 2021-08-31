import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardView extends StatelessWidget {
  final String imagePath;
  final String text;
  const CardView({Key? key, required this.imagePath, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 153.w,
      height: 220.w,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5.r),
                child: Image.asset(
                  imagePath,
                  width: 133.w,
                  height: 133.h,
                )),
          ),
          Container(
            width: 133.w,
            child: Text(text),
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: Color(0xFFFFFFFF),
          boxShadow: [BoxShadow(offset: Offset(0, 3), blurRadius: 5.r)]),
    );
  }
}
