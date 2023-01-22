import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ting_ting_app/core/colors/color.dart';

Widget myDrawerList() {
  return Container(
    color: backgroundColor,
    child: Column(
      children: [
        InkWell(
          onTap: () => Get.back(),
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, top: 20.h),
            child: Row(
              children: [
                Icon(
                  Icons.home,
                  color: kGreenColor,
                  size: 20.r,
                ),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                      color: kBlackColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, top: 30.h),
            child: Row(
              children: [
                Icon(
                  Icons.info,
                  color: kGreenColor,
                  size: 20.r,
                ),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  "About Us",
                  style: TextStyle(
                      color: kBlackColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, top: 30.h),
            child: Row(
              children: [
                Icon(
                  Icons.call_rounded,
                  color: kGreenColor,
                  size: 20.r,
                ),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  "Contact Us",
                  style: TextStyle(
                      color: kBlackColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, top: 30.h),
            child: Row(
              children: [
                Icon(
                  Icons.message,
                  color: kGreenColor,
                  size: 20.r,
                ),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  "Feedback",
                  style: TextStyle(
                      color: kBlackColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
