import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/controller/explore_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class MusiContainer extends StatelessWidget {
  final bool isPlaying;
  final String title, subtitle, imagePath;
  final int index;
  final ExploreController _exploreController = Get.find<ExploreController>();

   MusiContainer(
      {Key? key,
        required this.title,
        required this.subtitle,
        required this.index,
        required this.imagePath,
        required this.isPlaying})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(" element: ${this.isPlaying}");

        return GestureDetector(
          onTap: () {
            _exploreController.setMusicAtIndex(this.index);
          },
          child: Container(
            height: 88.h,
            width: 323.w,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              color: this.isPlaying
                  ? Color(0xFF9797DE).withOpacity(0.16)
                  : Colors.transparent,
            ),
            child: Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.asset(
                      this.imagePath,
                      width: 68.w,
                      height: 68.h,
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 198,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                this.title,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 13.sp),
                              ),
                            )),
                        Text(
                          "30:02",
                          style: TextStyle(
                              fontWeight: FontWeight.w100, fontSize: 10.sp),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h, left: 10.w),
                      child: Text(
                        this.subtitle,
                        style:
                            TextStyle(fontWeight: FontWeight.w400, fontSize: 10.sp),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
  }
}
