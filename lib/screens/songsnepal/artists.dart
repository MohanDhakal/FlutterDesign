import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/screens/songsnepal/widgets/artist.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArtistList extends StatelessWidget {
  const ArtistList({Key? key}) : super(key: key);

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
                    text: "You might",
                    style: TextStyle(
                        color: Color(0xFF302E2E),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: " love",
                    style: TextStyle(
                        color: Color(0xFF302E2E),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w300))
              ])),
              Container(
                height: 188.h,
                padding: EdgeInsets.only(top: 12.w,),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Artist(),
                    Artist(),
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
