import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/utils/home/explore_data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Music extends StatefulWidget {
  final bool isActive;
  const Music({Key? key,required this.isActive}) : super(key: key);

  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.h,
      width: 323.w,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color:
            widget.isActive ? Color(0xFF9797DE).withOpacity(0.16) : Colors.transparent,
      ),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                ExploreData.imagePath1,
                width: 68.w,
                height: 68.h,
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 198,
                      child: Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text(
                          "Faster Tissue Cells Repair",

                          style: TextStyle(
                              fontWeight: FontWeight.w500,

                              fontSize: 13.sp),
                        ),
                      )),
                  Text(
                    "30:02",
                    style:
                        TextStyle(fontWeight: FontWeight.w100, fontSize: 10.sp),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h,left: 10.w),
                child: Text(
                  "Re-tune your system to regenerate tissue cells",
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 10.sp),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
