import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ting_ting_app/screens/sign_in.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () => Get.to(const SignInScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Spacer(),
              Container(
                height: 160.h,
                width: 190.w,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/bus-gfa0abfd09_640.png"))),
              ),
              const Spacer(),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            "Ting Ting",
            style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 70.h,
          ),
          CircularProgressIndicator(
            color: Colors.grey[500],
          ),
        ],
      ),
    );
  }
}
