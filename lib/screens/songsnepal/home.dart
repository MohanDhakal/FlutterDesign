import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/screens/songsnepal/artists.dart';
import 'package:flutter_bloc_test/screens/songsnepal/freshpicks.dart';
import 'package:flutter_bloc_test/screens/songsnepal/moods.dart';
import 'package:flutter_bloc_test/screens/songsnepal/popularplaylist.dart';
import 'package:flutter_bloc_test/screens/songsnepal/trendings.dart';
import 'package:flutter_bloc_test/screens/songsnepal/widgets/favorite.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SongsNepalHome extends StatefulWidget {
  const SongsNepalHome({Key? key}) : super(key: key);

  @override
  _SongsNepalHomeState createState() => _SongsNepalHomeState();
}

class _SongsNepalHomeState extends State<SongsNepalHome> {
  int currentPageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentPageNumber,
            onTap: (index) {
              setState(() {
                currentPageNumber = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: (currentPageNumber == 0)
                    ? ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                                  colors: [
                                Color(0xFF8C37F6),
                                Color(0xFF1431FB),
                              ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)
                              .createShader(bounds);
                        },
                        child: SvgPicture.asset(
                            "assets/images/songsnepal/bottomnav/home.svg"))
                    : SvgPicture.asset(
                        "assets/images/songsnepal/bottomnav/home.svg"),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: (currentPageNumber == 1)
                    ? ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                                  colors: [
                                Color(0xFF8C37F6),
                                Color(0xFF1431FB),
                              ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)
                              .createShader(bounds);
                        },
                        child: SvgPicture.asset(
                            "assets/images/songsnepal/bottomnav/podcast.svg"))
                    : SvgPicture.asset(
                        "assets/images/songsnepal/bottomnav/podcast.svg"),
                label: 'Podcasts',
              ),
              BottomNavigationBarItem(
                icon: (currentPageNumber == 2)
                    ? ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                                  colors: [
                                Color(0xFF8C37F6),
                                Color(0xFF1431FB),
                              ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)
                              .createShader(bounds);
                        },
                        child: SvgPicture.asset(
                            "assets/images/songsnepal/bottomnav/profile.svg"))
                    : SvgPicture.asset(
                        "assets/images/songsnepal/bottomnav/profile.svg"),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: (currentPageNumber == 3)
                    ? ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                                  colors: [
                                Color(0xFF8C37F6),
                                Color(0xFF1431FB),
                              ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)
                              .createShader(bounds);
                        },
                        child: SvgPicture.asset(
                            "assets/images/songsnepal/bottomnav/premium.svg"))
                    : SvgPicture.asset(
                        "assets/images/songsnepal/bottomnav/premium.svg"),
                label: 'Premium',
              ),
            ]),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0x263B32F9),
              Color(0x0074738B),
              Color(0x007C7C7C),
            ], begin: Alignment(1, -1), end: Alignment(-0.5, 0.5)),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.w, left: 18.w),
                      child: SvgPicture.asset(
                        "assets/images/songsnepal/logo.svg",
                        width: 66.w,
                        height: 31.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.w, right: 18.w),
                      child: Icon(
                        CupertinoIcons.gear,
                        size: 24,
                        color: Colors.black54,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 11.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Good",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: " morning",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w400))
                  ])),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 337.w,
                  height: 36.h,
                  padding: EdgeInsets.only(left: 18.w),
                  child: TextFormField(
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        prefixIcon: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 11.w, right: 8.w),
                              child: SvgPicture.asset(
                                "assets/images/songsnepal/searchicon.svg",
                                height: 11.h,
                                width: 11.w,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            Text(
                              "Artists, songs or podcasts",
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),
                        contentPadding: EdgeInsets.only(
                            right: 10, left: 0, top: 0, bottom: 0),
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0x4D707070), width: 1.0),
                            borderRadius: BorderRadius.circular(8.r)),
                      )),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TrendingList(),
                SizedBox(
                  height: 30.h,
                ),
                Center(
                  child: Container(
                    height: 112.h,
                    width: 332.w,
                    decoration: BoxDecoration(
                        // color: Colors.red,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 3),
                              blurRadius: 20.r,
                              color: Color(0x1A000000))
                        ],
                        borderRadius: BorderRadius.circular(10.r),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/songsnepal/home/adspace.png",
                          ),
                          fit: BoxFit.none,
                        )),
                    // child: ClipRRect(
                    //   borderRadius: BorderRadius.circular(20.r),
                    //   child: Image.asset(
                    //       "assets/images/songsnepal/home/adspace.png",
                    //       width: 332.w,
                    //       height: 102.h,
                    //       fit: BoxFit.none),
                    // )
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                FreshPickList(),
                SizedBox(
                  height: 20.h,
                ),
                ArtistList(),
                SizedBox(
                  height: 20.h,
                ),
                PopularPlaylist(),
                SizedBox(
                  height: 20.h,
                ),
                MoodsMusicList(),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
