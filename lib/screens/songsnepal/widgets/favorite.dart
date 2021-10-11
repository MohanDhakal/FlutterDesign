import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoriteItem extends StatefulWidget {
  final String name;

  const FavoriteItem({Key? key, required this.name}) : super(key: key);

  @override
  _FavoriteItemState createState() => _FavoriteItemState();
}

class _FavoriteItemState extends State<FavoriteItem>
    with SingleTickerProviderStateMixin {
  bool selected = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: AnimatedContainer(
        height: 32.h,
        width: 100.w,
        duration: Duration(milliseconds: 200),
        margin: EdgeInsets.only(right: 10.w),
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF707070)),
            gradient: selected
                ? LinearGradient(colors: [
                    Color(0xFF8C37F6),
                    Color(0xFF1431FB),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
                : null,
            borderRadius: BorderRadius.all(Radius.circular(16.r))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left:4.w,),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                width: 22.w,
                height: 22.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:selected?Colors.white: Colors.black54,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child:selected?Icon(Icons.done,color: Colors.blue,size:10.w ,): Icon(
                    CupertinoIcons.plus,
                    size: 10.w,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 7.h,left:10.w, bottom: 7.h),
              child: Text(
                "${widget.name}",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: selected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
