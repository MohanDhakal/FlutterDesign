import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/controller/home_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Category extends StatelessWidget {
  final String name;
  final IconData icon;
  final HomeController c = Get.find();

  Category({
    Key? key,
    required this.name,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        c.isActive.isTrue
            ? c.triggerBtn = RxBool(false)
            : c.triggerBtn = RxBool(true);
        // c.triggerBtn = c.isActive.;
      },
      child: Column(
        children: [
          Container(
            height: 68.w,
            width: 68.h,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: c.isActive.isTrue
                    ? Color(0xFF9797DE).withOpacity(0.12)
                    : Color(0xFFFFFFFF),
                boxShadow: [
                  BoxShadow(
                      color: Color(0x1A51515F),
                      blurRadius: 10.r,
                      offset: Offset(0, 3))
                ]),
            child: Icon(this.icon),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            this.name,
            style: TextStyle(
              fontSize: 12.sp,
              color: c.isActive.isTrue ? Color(0xFF9797DE) : null,
            ),
          ),
        ],
      ),
    );
  }
}
