import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/screens/songsnepal/widgets/popular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularPlaylist extends StatelessWidget {
  const PopularPlaylist({Key? key}) : super(key: key);

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
                    text: "Popular",
                    style: TextStyle(
                        color: Color(0xFF302E2E),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: " Playlist",
                    style: TextStyle(
                        color: Color(0xFF302E2E),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w300))
              ])),
              Container(
                height: 244.h,

                clipBehavior: Clip.none,
                margin: EdgeInsets.only(top: 12.w, left: 0, right: 0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Popular(
                      imageUri: "assets/images/songsnepal/home/image.png",
                      title: "Hits of the moment",
                      description: "Top 50 biggest hits in the world right now.",
                    ),
                    Popular(
                      imageUri: "assets/images/songsnepal/home/image.png",
                      title: "Deepak Bajracharya mix",
                      description: "Top 50 biggest hits of Deepak Bajracharya.",
                    ),
                    Popular(
                      imageUri: "assets/images/songsnepal/home/image.png",
                      title: "Hits of the moment",
                      description: "Top 50 biggest hits in the world right now.",
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
