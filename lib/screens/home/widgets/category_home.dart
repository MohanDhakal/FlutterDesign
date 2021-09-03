import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/controller/home_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Category extends StatelessWidget {
  final String name;
  final String icon;
  final _controller = Get.put(HomeController());

  Category({
    Key? key,
    required this.name,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(builder: (c) {
      return InkWell(
        onTap: () {
          c.triggerBtn();
        },
        child: Column(
          children: [
            Container(
              height: 68.w,
              width: 68.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: c.isActive.value
                      ? Color(0xFF9797DE).withOpacity(0.12)
                      : Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x1A51515F),
                        blurRadius: 5.r,
                        offset: Offset(0, 2))
                  ]),
              child: SvgPicture.asset(
                this.icon,
                height: 26.h,
                width: 26.w,
                color: c.isActive.value
                    ? Color(0xFF9797DE).withOpacity(0.80)
                    : null,
                fit: BoxFit.none,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              this.name,
              style: TextStyle(
                fontSize: 12.sp,
                color: c.isActive.value ? Color(0xFF9797DE) : null,
              ),
            ),
          ],
        ),
      );
    });
  }
}
