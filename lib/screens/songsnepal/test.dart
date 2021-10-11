import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingTest extends StatefulWidget {
  OnBoardingTest({
    Key? key,
  }) : super(key: key);

  @override
  _OnBoardingTestState createState() => _OnBoardingTestState();
}

class _OnBoardingTestState extends State<OnBoardingTest>
    with TickerProviderStateMixin {
  late PageController pageController;
  int intoPage = 0;
  bool triggerOpacity = false;
  String title = "Enjoy Your Music";
  String body =
      "Discover your favorite songs from thousands of Nepali Songs in music library.";
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  );
  double beginValue = 0.2, endValue = 1.0;
  late final Animation<double> _animation =
      Tween(begin: beginValue, end: endValue).animate(_controller);

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: intoPage,
    );
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    _controller.forward();
    // print('called');

    return Material(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF8C37F6), Color(0xFF1431FB)])),
        child: Container(
          child: Stack(
            children: [
              PageView(
                controller: pageController,
                onPageChanged: (index) {
                  intoPage = index;
                  setTextForPage(index);
                },
                children: [
                  SlidableWidget(
                    backgroundShape:
                        "assets/images/songsnepal/customshape1.png",
                    backgroundImage:
                        "assets/images/songsnepal/musicrafiki1.png",
                    index: 0,
                  ),
                  SlidableWidget(
                    backgroundShape:
                        "assets/images/songsnepal/customshape2.png",
                    backgroundImage:
                        "assets/images/songsnepal/playlistrafiki1.png",
                    index: 1,
                  ),
                  SlidableWidget(
                    backgroundShape:
                        "assets/images/songsnepal/customshape3.png",
                    backgroundImage:
                        "assets/images/songsnepal/headphonepana1.png",
                    index: 2,
                  )
                ],
              ),
              Positioned(
                top: 468.h,
                child: Container(
                  width: 375.w,
                  decoration: BoxDecoration(
                      // color: Colors.blue,
                      // border: Border.all(),
                      // borderRadius:
                      //     BorderRadius.only(topLeft: Radius.elliptical(10, 10))
                      ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100.h,
                      ),
                      FadeTransition(
                        opacity: _animation,
                        child: SizedBox(
                          height: 27.h,
                          child: Text(
                            "$title",
                            style: TextStyle(
                              fontSize: 21.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      FadeTransition(
                        opacity: _animation,
                        child: SizedBox(
                            width: 208.w,
                            child: Text(
                              "$body",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.sp,
                                height: 1.7,
                                color: Colors.white54,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Skip",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 18.sp),
                          ),
                          SizedBox(
                              child: AnimatedSmoothIndicator(
                            activeIndex: intoPage,
                            count: 3,
                            effect: ExpandingDotsEffect(
                                dotWidth: 9.w,
                                dotHeight: 9.h,
                                dotColor: Colors.white,
                                activeDotColor: Colors.white),
                          )),
                          InkWell(
                            onTap: () {
                              print("page: $intoPage");
                              if (intoPage < 2) {
                                pageController.animateToPage(++intoPage,
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeIn);
                              } else {
                                Get.offNamed("/ChooseFavouriteScreen");
                              }
                            },
                            child: Container(
                              height: 49.w,
                              width: 49.w,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  setTextForPage(int pageIndex) {
    switch (pageIndex) {
      case 0:
        title = "Enjoy Your Music";
        body =
            "Discover your favorite songs from thousands of Nepali Songs in music library.";
        break;
      case 1:
        title = "Save & Play Songs Offline";
        body =
            "Download & enjoy listening music even without internet connection - data or wi-fi.";
        break;
      case 2:
        title = "Lyrics & Karaokes";
        body = "Get lyrics & karaoke of your favorite & popular Nepali songs.";
        break;
      default:
        break;
    }
    _controller.reset();
    setState(() {});
  }
}

class SlidableWidget extends StatelessWidget {
  final backgroundShape, backgroundImage;
  final int index;

  const SlidableWidget(
      {Key? key,
      required this.backgroundImage,
      required this.backgroundShape,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 375.w,
          height: (index == 2)
              ? 570.h
              : (index == 1)
                  ? 555.h
                  : 550.h,
          child: Image.asset(
            "$backgroundShape",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 78.h,
          left: 52.w,
          child: Image.asset(
            "$backgroundImage",
            // width: getWidthAccordingToIndex(index),
            // height: getHeightAccordingToIndex(index),
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }

  double getWidthAccordingToIndex(index) {
    if (index == 0) {
      return 272.w;
    } else if (index == 1) {
      return 269.w;
    } else {
      return 338.w;
    }
  }

  double getHeightAccordingToIndex(index) {
    if (index == 0) {
      return 294.h;
    } else if (index == 1) {
      return 253.h;
    } else {
      return 372.h;
    }
  }
}
