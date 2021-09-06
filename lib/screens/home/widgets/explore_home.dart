import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/screens/explore/page/explore_detail.dart';
import 'package:flutter_bloc_test/utils/core/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Explore extends StatelessWidget {
  final String imagePath, title, subtitle;
  final int id;

  Explore(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.id,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // timeDilation = 1.0;
    // Route _createRoute() {
    //   return PageRouteBuilder(
    //     pageBuilder: (context, animation, secondaryAnimation) => ExploreDetail(
    //         imagePath: this.imagePath,
    //         title: this.title,
    //         id: this.id,
    //         subtitle: this.subtitle),
    //     // transitionDuration: Duration(milliseconds: 500),
    //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //       // const begin = Offset(0, 1);
    //       // const end = Offset(0, 0);
    //       const curve = Curves.easeInOut;
    //
    //       var tween =
    //           Tween<double>(begin: 0.6, end: 1).chain(CurveTween(curve: curve));
    //       // var tween =
    //       //     Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    //       // print(animation.value);
    //       return FadeTransition(
    //         opacity: animation.drive(tween),
    //         child: child,
    //       );
    //     },
    //   );
    // }

    return Container(
      width: 153.w,
      height: 210.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 7), color: Color(0x1A51515F), blurRadius: 8.r)
          ]),
      margin: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.w),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: SizedBox(
                    height: 133,
                    width: 133,
                    child: Hero(
                      tag: this.id,
                      transitionOnUserGestures: true,
                      child: Material(
                        child: InkWell(
                          onTap: () => Get.to(() => ExploreDetail(
                              imagePath: this.imagePath,
                              title: this.title,
                              id: this.id,
                              subtitle: this.subtitle)),
                          child: Stack(
                            children: [
                              Image.asset(
                                imagePath,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                left:7,
                                top:7,
                                child: SvgPicture.asset(
                                  logo,
                                  width: 16.w,
                                  height: 17.h,
                                  color: Colors.white,
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ))),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 10.w, right: 10.w, top: 10.w, bottom: 4.h),
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.w,
              right: 10.w,
            ),
            child: Text(
              subtitle,
              style: TextStyle(fontWeight: FontWeight.w100, fontSize: 12.sp),
            ),
          ),
        ],
      ),
    );
  }
}
