
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ting_ting_app/core/colors/color.dart';

import '../../add_trip/add_trip_screen.dart';

class AddTripButtonWidget extends StatelessWidget {
  const AddTripButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const AddTripScreen());
      },
      child: Padding(
        padding: EdgeInsets.only(right: 30.w, left: 30.w, top: 10.h),
        child: Container(
          height: 50.h,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: kGreenColor,
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.route,
                  color: kGreenColor,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text("Add Trip",
                    style: TextStyle(
                        color: kGreyColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
