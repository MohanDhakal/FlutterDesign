import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/screens/songsnepal/widgets/fresh.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FreshPickList extends StatelessWidget {
  const FreshPickList({Key? key}) : super(key: key);

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
                    text: "Fresh",
                    style: TextStyle(
                        color: Color(0xFF302E2E),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: " Picks",
                    style: TextStyle(
                        color: Color(0xFF302E2E),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w300))
              ])),
              Container(
                height: 188.h,
                margin: EdgeInsets.only(top: 12.w, left: 0, right: 0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    FreshPickItem(
                      imageUri: "assets/images/songsnepal/home/freshpick1.png",
                      labelText: "Pop Rising",
                      totalDuration: "15 tracks",
                      totalTracks: "30min",
                    ),
                    FreshPickItem(
                      imageUri: "assets/images/songsnepal/home/freshpick1.png",
                      labelText: "Pop Rising",
                      totalDuration: "15 tracks",
                      totalTracks: "30min",
                    ),
                    FreshPickItem(
                      imageUri: "assets/images/songsnepal/home/freshpick1.png",
                      labelText: "Pop Rising",
                      totalDuration: "15 tracks",
                      totalTracks: "30min",
                    ),
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
