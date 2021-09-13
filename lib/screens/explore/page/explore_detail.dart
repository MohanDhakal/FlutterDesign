import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc_test/controller/explore_controller.dart';
import 'package:flutter_bloc_test/screens/explore/widgets/bottomsheet.dart';
import 'package:flutter_bloc_test/utils/core/colors.dart';
import 'package:flutter_bloc_test/screens/explore/widgets/music_explore.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';

class ExploreDetail extends StatelessWidget {
  final imagePath, title, subtitle, id;

  ExploreDetail({Key? key, this.imagePath, this.title, this.subtitle, this.id})
      : super(key: key);
  final _exploreController = Get.put(ExploreController());

  @override
  Widget build(BuildContext context) {
    // print(id);
    timeDilation = 1.5;
    return Material(
      child: Container(
        child: Stack(
          children: [
            Positioned(
                child: Hero(
              tag: this.id,
              child: Image.asset(
                this.imagePath,
                height: 336.h,
                width: 375.w,
                fit: BoxFit.cover,
              ),
            )),
            Positioned(
              top: 44.h,
              left: 26.h,
              child: InkWell(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 26.w,
                  ),
                  onTap: () {
                    _exploreController.animated =
                        _exploreController.animated.toggle();
                    print(_exploreController.animated);
                    Future.delayed(Duration(milliseconds: 100)).then((value) {
                      // print(value);
                      // Navigator.pop(context);
                      Get.back();
                    });
                  }),
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
                this.title,
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
                this.subtitle,
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
                                    _exploreController.selected =
                                        _exploreController.selected.toggle();
                                    // print(_exploreController.selected);
                                    // print(
                                    //     " values${_exploreController.selected.value}");
                                    // setState(() => selected = !selected);
                                  },
                                  child:
                                      GetX<ExploreController>(builder: (_exp) {
                                    return SvgPicture.asset(
                                      "assets/images/heart.svg",
                                      height: 20.h,
                                      color: _exp.selected.value
                                          ? Color(0xFF9797DE)
                                          : null,
                                      width: 20.w,
                                    );
                                  }),
                                )),
                            Padding(
                              padding: EdgeInsets.only(left: 26.0, top: 16.h),
                              child: InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                      context: context,
                                      backgroundColor: Colors.transparent,
                                      builder: (context) {
                                        return CustomBtnActionSheet();
                                      });
                                },
                                child: SvgPicture.asset(
                                  "assets/images/menu.svg",
                                  height: 20.h,
                                  width: 20.w,
                                ),
                              ),
                            ),
                          ],
                        ),
                        LimitedBox(
                            child: _exploreController.musics.length > 0
                                ? ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: _exploreController.musics.length,
                                    itemBuilder: (context, index) {
                                      var element = _exploreController.musics
                                          .elementAt(index);
                                      return MusiContainer(
                                          title: element.title,
                                          subtitle: element.subtitle,
                                          index: index,
                                          imagePath: element.imagePath,
                                          isPlaying: element.isPlaying);
                                    })
                                : SizedBox()),
                        // Column(
                        //   children: [
                        //     MusiContainer(
                        //       isPlaying: false,
                        //       title: widget.title,
                        //       subtitle: widget.subtitle,
                        //     ),
                        //   ],
                        // )
                      ],
                    ),
                  ),
                  GetX<ExploreController>(builder: (controller) {
                    return AnimatedPositioned(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        top: -36.h,
                        height: 80.h,
                        width: 80.w,
                        right: controller.animated.value ? 23.w : -20.w,
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          opacity: controller.animated.value ? 1 : 0.5,
                          child: Image.asset(
                            "assets/images/play.png",
                          ),
                        ));
                  })
                  // ] ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
