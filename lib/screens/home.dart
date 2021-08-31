import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc_test/colors.dart';
import 'package:flutter_bloc_test/utils/card_data.dart';
import 'package:flutter_bloc_test/widgets/card_home.dart';
import 'package:flutter_bloc_test/widgets/category_home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  final name = "Alex";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size.width);
    return SafeArea(
      child: Material(
        child: Container(
          margin: EdgeInsets.all(26.w),
          decoration: BoxDecoration(
            color: background,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/userIcon.png",
                    height: 44.w,
                    width: 44.h,
                  ),
                  SvgPicture.asset(
                    'assets/images/notification1.svg',
                    width: 24.w,
                    height: 24.h,
                  )
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "Good Morning, ",
                style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.w500),
              ),
              Text("$name",
                  style:
                      TextStyle(fontSize: 26.sp, fontWeight: FontWeight.w100)),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Container(
                    width: 274.w,
                    height: 38.w,
                    child: TextFormField(
                      enabled: false,
                      decoration: InputDecoration(
                          suffix: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.search,
                              ),
                              Text(
                                'search for meditation track',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.r)))),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 6.w),
                    width: 36.w,
                    height: 36.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        boxShadow: [
                          BoxShadow(
                              color: dropShadowColor,
                              offset: Offset(0, 15),
                              blurRadius: 10.r)
                        ],
                        color: filterBtn),
                    child: SvgPicture.asset(
                      "assets/images/filter.svg",
                      height: 24.w,
                      width: 24.w,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Category",
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0x5E000000)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Category(
                          icon: Icons.mediation,
                          name: 'Calm',
                        ),
                        Category(
                          icon: Icons.mediation,
                          name: 'Sleep',
                        ),
                        Category(
                          icon: Icons.mediation_rounded,
                          name: 'Relationship',
                        ),
                        Category(
                          icon: Icons.mediation,
                          name: 'Anxiety',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.w,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    height: 26.w,
                    width: 64.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Color(0xFF9797DE))),
                    child: Center(
                      child: Text(
                        "View all",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF9797DE)),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CardView(
                      text: CardData.text1,
                      imagePath: CardData.image1,
                    ),
                    CardView(
                      text: CardData.text2,
                      imagePath: CardData.image2,
                    ),
                    CardView(
                      text: CardData.text3,
                      imagePath: CardData.image3,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
