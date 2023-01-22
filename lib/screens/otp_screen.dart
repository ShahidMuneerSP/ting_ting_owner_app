import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import 'home/home_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final defaultPinTheme = PinTheme(
    width: 45.w,
    height: 45.h,
    textStyle: TextStyle(
        fontSize: 20.sp,
        color: const Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromARGB(255, 69, 93, 115)),
      borderRadius: BorderRadius.circular(10.r),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10.h),
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  height: 210.h,
                  width: 250.w,
                  child: SvgPicture.asset(
                    "assets/Enter OTP-amico.svg",
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: Text(
                "OTP",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
              child: Pinput(
                length: 6,
                defaultPinTheme: defaultPinTheme,
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) => print(pin),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30.w,
              ),
              child: SizedBox(
                height: 40.h,
                width: size.width.w,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0.r),
                    )),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 87, 201, 140)),
                  ),
                  onPressed: () {
                    Get.to(const HomeScreen());
                  },
                  child: Text(
                    'Verify',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                
                ),
              ),
            ),
            SizedBox(height: 10.h,)
          ],
        ),
      ),
    );
  }
}
