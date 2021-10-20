// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc_test/controller/reusable_controller.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
//
// class Genre extends StatefulWidget {
//   final String imageUri;
//   final String labelText;
//
//   Genre({Key? key, required this.imageUri, required this.labelText})
//       : super(key: key);
//
//   @override
//   _GenreState createState() => _GenreState();
// }
//
// class _GenreState extends State<Genre> {
//   bool isSelected = false;
//   final genreController = Get.find<GenreController>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         GestureDetector(
//           onTap: () {
//             setState(() {
//               isSelected = !isSelected;
//             });
//             if (isSelected) {
//               genreController.addCount();
//             } else {
//               genreController.removeCount();
//             }
//           },
//           child: Stack(
//             children: [
//               Container(
//                   height: 95.w,
//                   width: 95.w,
//                   margin: EdgeInsets.only(left: 25.w, top: 5.h, right: 25.w),
//                   decoration: BoxDecoration(
//                     // color: Colors.red,
//                     shape: BoxShape.circle,
//                     boxShadow: [
//                       BoxShadow(offset: Offset(0, 3), blurRadius: 8),
//                     ],
//                     image: DecorationImage(
//                         fit: BoxFit.none, image: AssetImage(widget.imageUri)),
//                   )),
//               Positioned(
//                 left: 75.w,
//                 top: 10.h,
//                 child: AnimatedOpacity(
//                   opacity: isSelected ? 1 : 0,
//                   duration: Duration(milliseconds: 400),
//                   curve: Curves.easeInOut,
//                   child: Container(
//                     width: 20.w,
//                     height: 20.w,
//                     child: Center(
//                         child: Icon(
//                       Icons.done,
//                       size: 15,
//                       color: Colors.white,
//                     )),
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.blue.shade500,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Align(
//           alignment: Alignment.center,
//           child: Padding(
//             padding: EdgeInsets.only(top: 2.h),
//             child: Text(
//               "${widget.labelText}",
//               style: TextStyle(
//                   fontWeight: FontWeight.w300,
//                   fontSize: 12,
//                   color: Color(0xFF242424)),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
