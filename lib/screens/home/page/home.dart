import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc_test/controller/home_controller.dart';
import 'package:flutter_bloc_test/utils/core/colors.dart';
import 'package:flutter_bloc_test/screens/home/widgets/category_home.dart';
import 'package:flutter_bloc_test/utils/home/card_data.dart';
import 'package:flutter_bloc_test/utils/home/explore_data.dart';
import 'package:flutter_bloc_test/utils/home/favorites_data.dart';
import 'package:flutter_bloc_test/screens/home/widgets/card_home.dart';
import 'package:flutter_bloc_test/screens/home/widgets/explore_home.dart';
import 'package:flutter_bloc_test/screens/home/widgets/favorites_home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';


class HomeUI extends StatelessWidget {
  final name = "Alex";

  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          // margin: EdgeInsets.all(26.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 26.w, top: 26.h, right: 26.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/userIcon.png",
                      height: 44.w,
                      width: 44.h,
                    ),
                    SvgPicture.asset(
                      'assets/images/notification1.svg',
                      width: 24.w,
                      height: 24.h,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 26.w, right: 26.w),
                child: Text(
                  "Good Morning, ",
                  style:
                      TextStyle(fontSize: 26.sp, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 26.w, right: 26.w),
                child: Text("$name",
                    style: TextStyle(
                        fontSize: 26.sp, fontWeight: FontWeight.w100)),
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 26.w, right: 26.w),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 274.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6.r),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0,4),
                                    color: Color(0x3351515F),
                                    // spreadRadius: 2.r,
                                    blurRadius: 80.r)
                              ]),
                          child: TextFormField(
                              enabled: false,
                              decoration: InputDecoration(
                                  suffixStyle: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black12),
                                  focusedBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  border: InputBorder.none)),
                        ),
                        Positioned(
                          left: 16.w,
                          top: 14.h,
                          bottom: 14.h,
                          child: Icon(
                            Icons.search,
                            size: 14,
                            color: Color(0x99000000),
                          ),
                        ),
                        Positioned(
                          left: 38.w,
                          top: 14.h,
                          bottom: 14.h,
                          child: SizedBox(
                              width: 177.w,
                              height: 15.h,
                              child: Text(
                                "Search for meditation tracks...",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0x5E000000)),
                              )),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 6.w),
                      width: 36.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0x3351515F),
                                offset: Offset(0, 7),
                                // spreadRadius: 4.r,
                                blurRadius: 10.r)
                          ],
                          color: filterBtn),
                      child: SvgPicture.asset(
                        "assets/images/filter.svg",
                        height: 24.w,
                        width: 24.h,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 26.w, right: 26.w),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Category",
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0x5E000000)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Category(
                            icon: Icons.mediation,
                            name: 'Calm',
                          ),
                          Category(
                            icon: Icons.mediation,
                            name: 'Sleep',
                          ),
                          Category(
                            icon: Icons.mediation_rounded,
                            name: 'Relationship',
                          ),
                          Category(
                            icon: Icons.mediation,
                            name: 'Anxiety',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 26.w, right: 26.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Recommended",
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w500),
                    ),
                    Container(
                      height: 26.w,
                      width: 64.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Color(0xFF9797DE))),
                      child: Align(
                        alignment: Alignment(0.05.w, 0.2.h),
                        child: Text(
                          "View all",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF9797DE)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                  height: 240.h,
                  margin: EdgeInsets.only(left: 26.w),
                  child: GetX<HomeController>(
                    builder: (controller) {
                      return (controller.recommendations.length>0)? ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.recommendations.length,
                          itemBuilder: (context, index) {
                            return CardView(
                              text: controller.recommendations.elementAt(index).text,
                              imagePath: controller.recommendations.elementAt(index).imagePath,
                            );
                          }):SizedBox(
                        child: Text("No recommendations..."),
                      );
                    }
                  )),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 26.w, right: 26.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Favorites",
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0x5E000000)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 26.w, right: 26.w),
                child: Column(
                  children: [
                    Favorites(
                        text: FavoritesData.fav1,
                        imagePath: FavoritesData.icon1),
                    Favorites(
                        text: FavoritesData.fav2,
                        imagePath: FavoritesData.icon2)
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.only(
                  left: 26.w,
                ),
                child: Text(
                  "Explore",
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
                ),
              ),
              Container(
                height: 210,
                margin: EdgeInsets.only(
                  left: 26.w,
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Explore(
                      imagePath: ExploreData.imagePath1,
                      title: ExploreData.title1,
                      subtitle: ExploreData.subtitle1,
                    ),
                    Explore(
                      imagePath: ExploreData.imagePath2,
                      title: ExploreData.title2,
                      subtitle: ExploreData.subtitle2,
                    ),
                    Explore(
                      imagePath: ExploreData.imagePath3,
                      title: ExploreData.title3,
                      subtitle: ExploreData.subtitle3,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              )
            ],
          ),
        ),
      ),
    );
  }
  //
  // List<CardView> get cards {
  //   return List<CardView>.generate(
  //     3,
  //     (index) => CardView(
  //       text: CardData.cardTxt[index],
  //       imagePath: CardData.cardImg[index],
  //     ),
  //   );
  // }
}
