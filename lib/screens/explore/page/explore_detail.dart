import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc_test/utils/core/colors.dart';
import 'package:flutter_bloc_test/screens/explore/widgets/music_explore.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExploreDetail extends StatefulWidget {
  const ExploreDetail({Key? key}) : super(key: key);

  @override
  _ExploreDetailState createState() => _ExploreDetailState();
}

class _ExploreDetailState extends State<ExploreDetail> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Stack(
          children: [
            Positioned(
                child: Image.asset(
              'assets/images/nature2.png',
              height: 336.h,
              width: 375.w,
              fit: BoxFit.cover,
            )),
            Positioned(
              top: 44.h,
              left: 26.h,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 26.w,
                ),
              ),
            ),
            Positioned(
                top: 46.h,
                left: 325.w,
                child: SvgPicture.asset(
                  "assets/images/Download.svg",
                  color: Colors.white,
                  height: 20.h,
                  width: 21,
                )),
            Positioned(
              top: 173.h,
              left: 26.w,
              child: Text(
                "In the lap of nature",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 26.sp,
                    color: Colors.white),
              ),
            ),
            Positioned(
              top: 208.h,
              left: 26.w,
              child: Text(
                "Nature",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp,
                    color: Colors.white),
              ),
            ),
            Positioned(
              top: 241.h,
              left: 26.w,
              child: Text(
                "10 Hr 30 min",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10.sp,
                    color: Colors.white),
              ),
            ),
            Positioned(
              top: 245.h,
              left: 89.w,
              child: Container(
                width: 4.h,
                height: 4.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0x99FFFFFF),
                ),
              ),
            ),
            Positioned(
              top: 241.h,
              left: 101.w,
              child: Text(
                "10 Tracks",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10.sp,
                    color: Colors.white),
              ),
            ),
            Positioned(
              top: 275.h,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 375.w,
                    // height: 200.h,
                    decoration: BoxDecoration(
                        color: background,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(40))),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 26.w, top: 16.h, bottom: 16.h),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() => selected = !selected);
                                },
                                child: SvgPicture.asset(
                                  "assets/images/heart.svg",
                                  height: 20.h,
                                  color: selected ? Color(0xFF9797DE):null,
                                  width: 20.w,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 26.0, top: 16.h),
                              child: SvgPicture.asset(
                                "assets/images/menu.svg",
                                height: 20.h,
                                width: 20.w,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Music(
                              isPlaying: false,
                            ),
                            Music(isPlaying: false),
                            Music(isPlaying: true)
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: -36.h,
                      right: 33.w,
                      child: Image.asset(
                        "assets/images/play.png",
                        height: 80.h,
                        width: 80.w,
                      ))
                  // ] ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    super.dispose();
  }
}
