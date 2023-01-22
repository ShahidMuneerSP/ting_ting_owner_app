import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ting_ting_app/core/colors/color.dart';

import '../../bus_route/bus_route_screen.dart';

class BusDetailsCardWidget extends StatelessWidget {
  const BusDetailsCardWidget({
    Key? key,
    required this.busName,
    required this.number,
    required this.category,
    required this.route,
  }) : super(key: key);
  final String busName;
  final String number;
  final String category;
  final String route;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(const BusRouteScreen()),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: kGreenColor,
              ),
              borderRadius: BorderRadius.circular(10.r)),
          child: Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: SizedBox(
              height: 102.h,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  SizedBox(
                    height: 105.h,
                    width: 280.w,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Row(
                            children: [
                              Icon(
                                Icons.directions_bus,
                                size: 18.r,
                                color: kGreenColor,
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                "Bus Name : ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                    color: kDarkGreyColor),
                              ),
                              Text(busName,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp,
                                      color: kBlackColor)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: Row(
                            children: [
                              Icon(
                                Icons.confirmation_number,
                                size: 18.r,
                                color: kGreenColor,
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                "Number : ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                    color: kDarkGreyColor),
                              ),
                              SizedBox(
                                width: 13.w,
                              ),
                              Text(number,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp,
                                      color: kBlackColor)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: Row(
                            children: [
                              Icon(
                                Icons.category,
                                size: 18.r,
                                color: kGreenColor,
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                "Category : ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                    color: kDarkGreyColor),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(category,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp,
                                      color: kBlackColor)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.h, bottom: 10.h),
                          child: Row(
                            children: [
                              Icon(
                                Icons.route,
                                size: 18.r,
                                color: kGreenColor,
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                "Route : ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                    color: kDarkGreyColor),
                              ),
                              SizedBox(
                                width: 28.w,
                              ),
                              Text(route,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp,
                                      color: kBlackColor)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height: 115.h,
                      width: 30.w,
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.delete,
                                color: kRedColor,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit,
                                color: kBlack54Color,
                              )),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
