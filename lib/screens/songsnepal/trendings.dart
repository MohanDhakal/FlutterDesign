import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/screens/songsnepal/widgets/trending.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrendingList extends StatelessWidget {
  const TrendingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Trending",
                  style: TextStyle(
                      color: Color(0xFF302E2E),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: " Now",
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
                  TrendingItem(
                    imageUri:
                        "assets/images/songsnepal/home/VEK-bibek-waiba.png",
                    labelText: "Mega Hit Mix",
                    totalDuration: "20 tracks",
                    totalTracks: "30min",
                  ),
                  TrendingItem(
                    imageUri: "assets/images/songsnepal/home/pic.png",
                    labelText: "Mega Hit Mix",
                    totalDuration: "20 tracks",
                    totalTracks: "30min",
                  ),
                  TrendingItem(
                    imageUri:
                        "assets/images/songsnepal/home/VEK-bibek-waiba.png",
                    labelText: "Mega Hit Mix",
                    totalDuration: "20 tracks",
                    totalTracks: "30min",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
