import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/screens/songsnepal/widgets/genre.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenreList extends StatelessWidget {
  const GenreList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        clipBehavior: Clip.none,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0x00FFFFFF),
          Color(0x4D323232),
          Color(0xC91E1E1E),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 259.w,
              child: Text("Choose 3 or more genre you like.",
                  style: TextStyle(
                    fontSize: 23.sp,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: 315.w,
              height: 40.h,
              child: TextFormField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                      prefixIcon: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: Text(
                              "Search",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF8C8C8C),
                              ),
                            ),
                          )
                        ],
                      ),
                      contentPadding: EdgeInsets.only(
                          right: 10, left: 0, top: 0, bottom: 0),
                      filled: true,
                      fillColor: Color(0xFFF2F2F2),
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0x59707070), width: 1.0),
                          borderRadius: BorderRadius.circular(8.r)))),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Genre(
                      imageUri: "assets/images/songsnepal/genre/el1.png",
                      labelText: "Pop"),
                  Genre(
                      imageUri: "assets/images/songsnepal/genre/el2.png",
                      labelText: "Adhunik"),
                  Genre(
                      imageUri: "assets/images/songsnepal/genre/el3.png",
                      labelText: "Rock"),
                  Genre(
                      imageUri: "assets/images/songsnepal/genre/el4.png",
                      labelText: "Metal"),
                  Genre(
                      imageUri: "assets/images/songsnepal/genre/el1.png",
                      labelText: "Pop"),
                  Genre(
                      imageUri: "assets/images/songsnepal/genre/el2.png",
                      labelText: "Adhunik"),
                  Genre(
                      imageUri: "assets/images/songsnepal/genre/el3.png",
                      labelText: "Rock"),
                  Genre(
                      imageUri: "assets/images/songsnepal/genre/el4.png",
                      labelText: "Metal"),
                  Genre(
                      imageUri: "assets/images/songsnepal/genre/el1.png",
                      labelText: "Pop"),
                  Genre(
                      imageUri: "assets/images/songsnepal/genre/el2.png",
                      labelText: "Adhunik"),
                  Genre(
                      imageUri: "assets/images/songsnepal/genre/el3.png",
                      labelText: "Rock"),
                  Genre(
                      imageUri: "assets/images/songsnepal/genre/el4.png",
                      labelText: "Metal"),
                  Genre(
                      imageUri: "assets/images/songsnepal/genre/el1.png",
                      labelText: "Pop"),
                  Genre(
                      imageUri: "assets/images/songsnepal/genre/el2.png",
                      labelText: "Adhunik"),
                  Genre(
                      imageUri: "assets/images/songsnepal/genre/el3.png",
                      labelText: "Rock"),
                  Genre(
                      imageUri: "assets/images/songsnepal/genre/el4.png",
                      labelText: "Metal"),
                ],
              ),
            ),
            Material(
              elevation: 2.0,
              child: InkWell(
                onTap: () {
                  //go to next screen
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
