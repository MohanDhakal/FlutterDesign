import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget getSetOnMapFeild(size) {
  return Container(
    margin: EdgeInsets.only(top: 11),
    width: size.width * (302 / 375),
    height: size.width * (35 / 375),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(3),
      color: Color(0xFFF3F3F3),
    ),
    child: TextField(
      decoration: InputDecoration(
        disabledBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        enabled: false,
        prefixIcon: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.location_pin,
                size: 11.w,
                // color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'set on map',
                style: TextStyle(
                    color: Color(0xC2404D4D), fontWeight: FontWeight.w200),
              ),
            ),
          ],
        ),
        prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
      ),
    ),
  );
}

Widget getCurrentAddressFeild(size, String? location) {
  return Container(
    height: size.width * (34 / 375),
    width: size.width * (302 / 375),
    margin: EdgeInsets.only(bottom: 18),
    decoration: BoxDecoration(
        color: Color(0xffF3F3F3), borderRadius: BorderRadius.circular(8)),
    child: TextField(
      decoration: InputDecoration(
        disabledBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        enabled: false,
        prefixIcon: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.location_on_rounded,
                size: 11.w,
                color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: FittedBox(child: Text(location ?? "N/A")),
            ),
          ],
        ),
        prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
        // suffixIcon: ,
        // helperText: 'Address',
      ),
    ),
  );
}

Widget getSearchYourAddressFeild(size) {
  return Container(
    height: size.width * (34 / 375),
    width: size.width * (302 / 375),
    decoration: BoxDecoration(
        color: Color(0xFFE8E8E8), borderRadius: BorderRadius.circular(8)),
    child: TextField(
      decoration: InputDecoration(
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          enabled: false,
          prefixIcon: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.location_on_rounded,
                  size: 11.w,
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'search your destination',
                  style: TextStyle(
                      color: Color(0xC2404D4D), fontWeight: FontWeight.w200),
                ),
              ),
            ],
          ),
          prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
          suffixIcon: Icon(
            CupertinoIcons.search,
            size: 13,
          )
          // suffixIcon: ,
          // helperText: 'Address',
          ),
    ),
  );
}
