import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: double.infinity,
        height: 200.h,
        padding: EdgeInsets.only(top: 20.h),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 40.h,
          ),
          Container(
              margin:  EdgeInsets.only(bottom: 5.h),
              height: 90.h,
              width: 120.w,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bus-gfa0abfd09_640.png")))),
          Text(
            "Ting Ting",
            style: TextStyle(
                color: Colors.black,
                fontSize: 19.sp,
                fontWeight: FontWeight.bold),
          )
        ]));
  }
}
