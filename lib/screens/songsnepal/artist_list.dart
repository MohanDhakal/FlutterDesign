import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/enums/page.dart';
import 'package:flutter_bloc_test/screens/songsnepal/widgets/reusable_selection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ArtistList extends StatelessWidget {
  const ArtistList({Key? key}) : super(key: key);

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
                    child: Text("Choose 3 or more genre you like.",
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
                                borderSide: BorderSide(
                                    color: Color(0x59707070), width: 1.0),
                                borderRadius: BorderRadius.circular(8.r)))),
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
                        children: [
                          ReusableSelection(
                              imageUri: "assets/images/songsnepal/genre/el4.png",
                              labelText: "Metal",
                          page: ReusablePage.artist,
                          ),
                          ReusableSelection(
                            imageUri: "assets/images/songsnepal/genre/el4.png",
                            labelText: "Metal",
                            page: ReusablePage.artist,
                          ),
                          ReusableSelection(
                            imageUri: "assets/images/songsnepal/genre/el4.png",
                            labelText: "Metal",
                            page: ReusablePage.artist,
                          ),

                        ],
                      ),
                      // GetX<GenreController>(builder: (controller) {
                      //   var count = controller.selectionCount.value;
                      //   return count > 0
                      //       ? Positioned(
                      //     top: 580.h,
                      //     left: 127.w,
                      //     child: AnimatedOpacity(
                      //       opacity: count > 0 ? 1 : 0,
                      //       duration: Duration(milliseconds: 400),
                      //       child: Container(
                      //         width: 121.w,
                      //         height: 45.h,
                      //         decoration: BoxDecoration(
                      //           color: Colors.white,
                      //           borderRadius: BorderRadius.circular(24.r),
                      //         ),
                      //         child: MaterialButton(
                      //           onPressed: () {
                      //
                      //           },
                      //           child: Text(
                      //             "Done",
                      //             style: TextStyle(
                      //                 fontWeight: FontWeight.w300,
                      //                 fontSize: 15.sp,
                      //                 color: Color(0xFF242424)),
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   )
                      //       : Positioned(
                      //       top: 580.h,
                      //       left: 170.w,
                      //       child: AnimatedOpacity(
                      //         opacity: count > 0 ? 0 : 1,
                      //         duration: Duration(milliseconds: 400),
                      //         child: Text(
                      //           "Skip",
                      //           style: TextStyle(
                      //               color: Colors.white,
                      //               fontSize: 18.sp,
                      //               decoration: TextDecoration.underline),
                      //         ),
                      //       ));
                      // }),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
