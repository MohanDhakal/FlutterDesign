import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/controller/home_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Category extends StatelessWidget {
  final String name;
  final String icon;
  final int index;
  final _hmc = Get.find<HomeController>();

  Category({
    Key? key,
    required this.name,
    required this.icon,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var element = _hmc.categories.elementAt(index);
    return InkWell(
      onTap: () {
        // print('here');
        _hmc.setActiveCategoryAtIndex(index);
      },
      customBorder: CircleBorder(),
      child: Column(
        children: [
          Container(
            height: 68.w,
            width: 68.h,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: element.isActive
                    ? Color(0xFF9797DE).withOpacity(0.12)
                    : Color(0xFFFFFFFF),
                boxShadow: [
                  BoxShadow(
                      color: Color(0x1A51515F),
                      blurRadius: 5.r,
                      spreadRadius: 2.r,
                      offset: Offset(0, 2))
                ]),
            child: SvgPicture.asset(
              this.icon,
              height: 26.h,
              width: 26.w,
              color:
                  element.isActive ? Color(0xFF9797DE).withOpacity(0.80) : null,
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
              color: element.isActive ? Color(0xFF9797DE) : null,
            ),
          ),
        ],
      ),
    );
  }
}
