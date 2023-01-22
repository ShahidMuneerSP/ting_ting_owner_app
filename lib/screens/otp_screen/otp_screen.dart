import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:ting_ting_app/core/colors/color.dart';
import '../home/home_screen.dart';

///otp screen
class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 45.w,
      height: 45.h,
      textStyle: TextStyle(
          fontSize: 20.sp, color: kDarkBlueColor, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: kLightBlueColor),
        borderRadius: BorderRadius.circular(10.r),
      ),
    );
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
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 250.h,
                      width: 300.w,
                      child: SvgPicture.asset(
                        "assets/Enter OTP-amico.svg",
                      )),
                  Text(
                    "OTP",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Pinput(
                    length: 6,
                    defaultPinTheme: defaultPinTheme,
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                    onCompleted: (pin) => print(pin),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    height: 40.h,
                    width: size.width.w,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0.r),
                        )),
                        backgroundColor: MaterialStateProperty.all(kGreenColor),
                      ),
                      onPressed: () {
                        Get.to(const HomeScreen());
                      },
                      child: Text(
                        'Verify',
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
