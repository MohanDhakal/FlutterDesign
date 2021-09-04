import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc_test/utils/core/colors.dart';
import 'package:flutter_bloc_test/screens/explore/widgets/music_explore.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExploreDetail extends StatefulWidget {
  final imagePath, title, subtitle;

  const ExploreDetail({Key? key, this.imagePath, this.title, this.subtitle})
      : super(key: key);

  @override
  _ExploreDetailState createState() => _ExploreDetailState();
}

class _ExploreDetailState extends State<ExploreDetail> {
  bool selected = false;
  bool animated = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    Future.delayed(Duration(milliseconds: 300)).then((value) {
      setState(() {
        animated = true;
      });
    });
    // Duration(milliseconds: 500)
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Stack(
          children: [
            Positioned(
                child: Image.asset(
                  widget.imagePath,
                  height: 336.h,
                  width: 375.w,
                  fit: BoxFit.cover,
                )),
            Positioned(
              top: 44.h,
              left: 26.h,
              child: InkWell(
                onTap: () {
                  setState(() {
                    animated = !animated;
                  });
                  Future.delayed(Duration(milliseconds:100 )).then((value) {
                    print(value);
                    Navigator.pop(context);
                  });
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
                widget.title,
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
                widget.subtitle,
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
                                  color: selected ? Color(0xFF9797DE) : null,
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
                  AnimatedPositioned(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      top: -36.h,
                      width: 80.w,
                      height: 80.h,
                      right: animated ? 23.w : -20.w,
                      child: AnimatedOpacity(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        opacity: animated ? 1 : 0.5,
                        child: Image.asset(
                          "assets/images/play.png",
                          height: 80.h,
                          width: 80.w,
                        ),
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
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  }
}
