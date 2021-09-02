import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Category extends StatefulWidget {
  final String name;
  final IconData icon;
  const Category({
    Key? key,
    required this.name,
    required this.icon,
  }) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          active = !active;
        });
      },
      child: Column(
        children: [
          Container(
            height: 68.w,
            width: 68.h,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: active
                    ? Color(0xFF9797DE).withOpacity(0.12)
                    : Color(0xFFFFFFFF),
                boxShadow: [
                  BoxShadow(
                      color: Color(0x1A51515F),
                      blurRadius: 80.r,
                      spreadRadius: 10.r,
                      offset: Offset(0, 3))
                ]),
            child: Icon(widget.icon),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            widget.name,
            style: TextStyle(
              fontSize: 12.sp,
              color: active ? Color(0xFF9797DE) : null,
            ),
          ),
        ],
      ),
    );
  }
}
