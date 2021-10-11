import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Genre extends StatelessWidget {
  final String imageUri;
  final String labelText;

  Genre({Key? key, required this.imageUri, required this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
              height: 95,
              width: 95,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.none, image: AssetImage(imageUri)),
              )),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
          child: Text(
            "$labelText",
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12,
                color: Color(0xFF242424)),
          ),
        ),
      ],
    );
  }
}
