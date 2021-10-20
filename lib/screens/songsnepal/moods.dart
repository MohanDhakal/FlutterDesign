import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/screens/songsnepal/widgets/mood.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoodsMusicList extends StatelessWidget {
  const MoodsMusicList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.only(left:18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Mood",
                    style: TextStyle(
                        color: Color(0xFF302E2E),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold)),
              ])),
              Container(
                height: 76.h,
                margin: EdgeInsets.only(top: 12.w, left: 0, right:0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Mood(),
                    Mood(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
