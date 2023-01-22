import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:timeline_tile/timeline_tile.dart';

class BusRouteScreen extends StatelessWidget {
  const BusRouteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Bharathi Travels",
          style: TextStyle(
              fontSize: 18.sp,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 30.h,
              width: double.infinity,
              color: Colors.black,
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
                        color: Colors.white),
                  ),
                  Spacer(),
                  const Text(
                    "Departure",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "11:00 AM",
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: const Color.fromARGB(255, 87, 201, 140),
                        ),
                      ),
                      SizedBox(
                        height: 66.h,
                      ),
                      Text("11:10 AM",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color.fromARGB(255, 87, 201, 140),
                          )),
                      SizedBox(
                        height: 66.h,
                      ),
                      Text("11:15 AM",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color.fromARGB(255, 87, 201, 140),
                          )),
                      SizedBox(
                        height: 66.h,
                      ),
                      Text("11:22 AM",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color.fromARGB(255, 87, 201, 140),
                          )),
                      SizedBox(
                        height: 66.h,
                      ),
                      Text("11:30 AM",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color.fromARGB(255, 87, 201, 140),
                          )),
                      SizedBox(
                        height: 66.h,
                      ),
                      Text("11:40 AM",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color.fromARGB(255, 87, 201, 140),
                          )),
                      SizedBox(
                        height: 66.h,
                      ),
                      Text("11:50 AM",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color.fromARGB(255, 87, 201, 140),
                          )),
                      SizedBox(
                        height: 66.h,
                      ),
                      Text("12:00 PM",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color.fromARGB(255, 87, 201, 140),
                          )),
                      SizedBox(
                        height: 68.h,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                      height: 670.h,
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
                      )),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kakkanad",
                        style: TextStyle(fontSize: 15.sp, color: Colors.black),
                      ),
                      SizedBox(
                        height: 66.h,
                      ),
                      Text("Mavelipuram Colony",
                          style:
                              TextStyle(fontSize: 15.sp, color: Colors.black)),
                      SizedBox(
                        height: 66.h,
                      ),
                      Text("Judgemukku",
                          style:
                              TextStyle(fontSize: 15.sp, color: Colors.black)),
                      SizedBox(
                        height: 66.h,
                      ),
                      Text("Kalamasserry",
                          style:
                              TextStyle(fontSize: 15.sp, color: Colors.black)),
                      SizedBox(
                        height: 66.h,
                      ),
                      Text("Muttam",
                          style:
                              TextStyle(fontSize: 15.sp, color: Colors.black)),
                      SizedBox(
                        height: 66.h,
                      ),
                      Text("AmbattuKavu",
                          style:
                              TextStyle(fontSize: 15.sp, color: Colors.black)),
                      SizedBox(
                        height: 66.h,
                      ),
                      Text("Pulinchodu",
                          style:
                              TextStyle(fontSize: 15.sp, color: Colors.black)),
                      SizedBox(
                        height: 66.h,
                      ),
                      Text("Aluva",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.black,
                          )),
                      SizedBox(
                        height: 68.h,
                      )
                    ],
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "11:02 AM",
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: const Color.fromARGB(223, 183, 40, 27),
                        ),
                      ),
                      SizedBox(
                        height: 66.h,
                      ),
                      Text("11:11 AM",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color.fromARGB(223, 183, 40, 27),
                          )),
                      SizedBox(
                        height: 66.h,
                      ),
                      Text("11:16 AM",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color.fromARGB(223, 183, 40, 27),
                          )),
                      SizedBox(
                        height: 66.h,
                      ),
                      Text("11:23 AM",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color.fromARGB(223, 183, 40, 27),
                          )),
                      SizedBox(
                        height: 66.h,
                      ),
                      Text("11:31 AM",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color.fromARGB(223, 183, 40, 27),
                          )),
                      SizedBox(
                        height: 66.h,
                      ),
                      Text("11:41 AM",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color.fromARGB(223, 183, 40, 27),
                          )),
                      SizedBox(
                        height: 66.h,
                      ),
                      Text("11:51 AM",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color.fromARGB(223, 183, 40, 27),
                          )),
                      SizedBox(
                        height: 148.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10.w,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
