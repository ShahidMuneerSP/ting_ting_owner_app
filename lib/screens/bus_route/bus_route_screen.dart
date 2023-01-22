import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:ting_ting_app/core/colors/color.dart';

class BusRouteScreen extends StatelessWidget {
  const BusRouteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: kBlackColor,
            )),
        title: Text(
          "Bharathi Travels",
          style: TextStyle(
              fontSize: 18.sp, color: kBlackColor, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 30.h,
                width: double.infinity,
                color: kBlackColor,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Arrival",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: backgroundColor),
                    ),
                    const Spacer(),
                    const Text(
                      "Departure",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: backgroundColor),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 525.h,
                child: Row(
                  children: [
                    SizedBox(
                      width: 80.w,
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: 5.h),
                              child: Text(
                                "11:00 AM",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: kGreenColor,
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: 8,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 65.h,
                          );
                        },
                      ),
                    ),
                    Container(
                      width: 20.w,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 156, 201, 236),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: ListView.builder(
                        itemCount: 8,
                        itemBuilder: (context, index) => TimelineTile(
                          indicatorStyle: IndicatorStyle(
                              indicatorXY: 0.1.h,
                              color: index == 0
                                  ? const Color.fromARGB(255, 52, 115, 167)
                                  : index == 1
                                      ? const Color.fromARGB(255, 52, 115, 167)
                                      : index == 2
                                          ? const Color.fromARGB(
                                              255, 52, 115, 167)
                                          : Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(
                        width: (size.width) - 110,
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(top: 5.h),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  Text(
                                    "Kakkanad",
                                    style: TextStyle(
                                        fontSize: 15.sp, color: kBlackColor),
                                  ),
                                  const Spacer(),
                                  Text("11:02 AM",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        color: kRedColor,
                                      )),
                                  SizedBox(
                                    width: 10.w,
                                  )
                                ],
                              ),
                            );
                          },
                          itemCount: 7,
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: 65.h,
                            );
                          },
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
