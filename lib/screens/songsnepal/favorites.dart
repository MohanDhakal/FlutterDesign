import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/screens/songsnepal/widgets/favorite.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseFavourites extends StatelessWidget {
  const ChooseFavourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 237.w,
              margin: EdgeInsets.only(left: 33.w),
              child: Text(
                "Choose your favorite languages",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 23.h, height: 1.7),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 264.w,
              margin: EdgeInsets.only(left: 33.w),
              child: Text(
                "Enjoy music in all languages you like",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.h,
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              margin: EdgeInsets.only(left:33.w,right: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FavoriteItem(name: "Nepali"),
                  FavoriteItem(name: "English"),
                  FavoriteItem(name: "Bhojpuri"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left:33.w,right: 10.w,top: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FavoriteItem(name: "Nepali"),
                  FavoriteItem(name: "English"),
                  FavoriteItem(name: "Bhojpuri"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left:33.w,right: 10.w,top: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FavoriteItem(name: "Nepali"),
                  FavoriteItem(name: "English"),
                ],
              ),
            ),
            SizedBox(
              height: 300.h,
            ),
            Center(
              child: MaterialButton(
                onPressed: () {},
                child: Container(
                  width: 175.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(23.r)),
                      gradient: LinearGradient(
                          colors: [
                            Color(0xFF8C37F6),
                            Color(0xFF1431FB),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: Center(
                      child: Text(
                    "Save(1)",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w300),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              onTap: (){
                // Get.to()
              },
              child: Center(
                  child: Text(
                "Skip",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.underline),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
