import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class FindingMusic extends StatefulWidget {
  const FindingMusic({Key? key}) : super(key: key);

  @override
  _FindingMusicState createState() => _FindingMusicState();
}

class _FindingMusicState extends State<FindingMusic> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(milliseconds: 2000),
    ).then((value) {
      Get.offAllNamed(
        "/SongsNepalHome",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xF8F8F8),
        body: Container(
            color: Color(0xF8F8F8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.w),
                  child: SizedBox(
                    height: 186.h,
                    width: 375.w,
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                            "assets/images/songsnepal/musicnotes.svg"),
                        Positioned(
                          top: 20.h,
                          left: 20.w,
                          child: Text(
                            "Finding music for you.",
                            style: TextStyle(
                                fontSize: 23.sp, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 169.h,
                ),
                Center(
                  child: SpinKitThreeBounce(
                    color: Colors.blue,
                    size: 24,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
