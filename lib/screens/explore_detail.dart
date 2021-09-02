import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc_test/colors.dart';
import 'package:flutter_bloc_test/widgets/music_explore.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreDetail extends StatefulWidget {
  const ExploreDetail({Key? key}) : super(key: key);

  @override
  _ExploreDetailState createState() => _ExploreDetailState();
}

class _ExploreDetailState extends State<ExploreDetail> {
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
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
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
                onTap: (){
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
              top: 270.h,
              child: Container(
                width: 375.w,
                // height: 200.h,
                decoration: BoxDecoration(
                    color:background,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(60))),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 28.w, top: 20.h),
                          child: Icon(Icons.circle),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 19.0, top: 20.h),
                          child: Icon(Icons.menu),
                        ),
                      ],
                    ),
                    Music(isActive: true,),
                    Music(isActive:false),
                    Music(isActive:false)
                  ],
                ),
              ),
            ),
            // Positioned(top: 351.h, left: 26.h, right: 26.h, child: Music(
            //
            // ))
          ],
        ),
      ),
    );
  }
}
