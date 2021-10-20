import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/controller/songsnepal/reusable_controller.dart';
import 'package:flutter_bloc_test/enums/page.dart';
import 'package:flutter_bloc_test/screens/songsnepal/artist_picker.dart';
import 'package:flutter_bloc_test/screens/songsnepal/home.dart';
import 'package:flutter_bloc_test/screens/songsnepal/widgets/reusable_selection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ReusableList extends StatelessWidget {
  final titleTag;
  final ReusablePage reusablePage;
  final genreController = Get.put(GenreController());
  final artistController = Get.put(ArtistController());

  ReusableList({Key? key, required this.titleTag, required this.reusablePage})
      : super(key: key);

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
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: SizedBox(
                width: 259.w,
                child: Text("$titleTag",
                    style: TextStyle(
                      fontSize: 23.sp,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: SizedBox(
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
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF8C8C8C),
                              ),
                            ),
                          )
                        ],
                      ),
                      contentPadding: EdgeInsets.only(
                          right: 10, left: 0, top: 0, bottom: 0),
                      // filled: true,
                      // fillColor: Color(0xFFF2F2F2),
                      disabledBorder: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.blue, width: 1.0),
                          borderRadius: BorderRadius.circular(8.r)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0x4D707070), width: 1.0),
                          borderRadius: BorderRadius.circular(8.r)),
                    )),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Stack(
                children: [
                  GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: getSelectionWidget(),
                  ),
                  Obx(() {
                    if (reusablePage == ReusablePage.genre) {
                      var count = genreController.selectionCount.value;
                      return getSkipSelected(count);
                    } else {
                      var count = artistController.selectionCount.value;
                      return getSkipSelected(count);
                    }
                  }),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  List<Widget> getSelectionWidget() {
    String image1 = "assets/images/songsnepal/genre/el4.png";
    String text1 = "Metal";
    String image2 = "assets/images/songsnepal/genre/el1.png";
    String text2 = "Pop";
    String image3 = "assets/images/songsnepal/artists/1.png";
    String text3 = "Randy Marshall";
    String image4 = "assets/images/songsnepal/artists/3.png";
    String text4 = "Janet Porter";

    if (reusablePage == ReusablePage.genre) {
      return List<Widget>.generate(12, (index) {
        if (index.isEven) {
          return ReusableSelection(
              page: ReusablePage.genre, imageUri: image1, labelText: text1);
        } else {
          return ReusableSelection(
              page: ReusablePage.genre, imageUri: image2, labelText: text2);
        }
      });
    } else {
      return List<Widget>.generate(12, (index) {
        if (index.isEven) {
          return ReusableSelection(
              page: ReusablePage.artist, imageUri: image3, labelText: text3);
        } else {
          return ReusableSelection(
              page: ReusablePage.artist, imageUri: image4, labelText: text4);
        }
      });
    }
  }

  Widget getSkipSelected(int count) {
    return count > 0
        ? Positioned(
            top: 580.h,
            left: 127.w,
            child: AnimatedOpacity(
              opacity: count > 0 ? 1 : 0,
              duration: Duration(milliseconds: 400),
              child: Container(
                width: 121.w,
                height: 45.h,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: MaterialButton(
                  onPressed: () {
                    if (reusablePage == ReusablePage.artist) {
                      Get.toNamed(
                        "/FindingMusicScreen",
                      );
                    } else {
                      Get.to(ArtistPicker(),
                          transition: Transition.leftToRight,
                          preventDuplicates: false);
                    }
                  },
                  child: Text(
                    "Done",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15.sp,
                        color: Color(0xFF242424)),
                  ),
                ),
              ),
            ),
          )
        : Positioned(
            top: 580.h,
            left: 170.w,
            child: AnimatedOpacity(
              opacity: count > 0 ? 0 : 1,
              duration: Duration(milliseconds: 400),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "Skip",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      decoration: TextDecoration.underline),
                ),
              ),
            ));
  }
}
