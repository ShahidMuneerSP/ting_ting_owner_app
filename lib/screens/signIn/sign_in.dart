import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ting_ting_app/core/colors/color.dart';

import '../otp_screen/otp_screen.dart';

///Signin screen
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    //controllers
    TextEditingController mobileNoController = TextEditingController();
    FocusNode mobileNoFocusNode = FocusNode();

    return Scaffold(
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
                    "Sign In",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: mobileNoController,
                          focusNode: mobileNoFocusNode,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                width: 1.w,
                                color: kGreenColor,
                              ),
                            ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(12.0.w),
                              child: Text(
                                "+91",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(
                                width: 1.w,
                                color: kGreenColor,
                              ),
                            ),
                            labelText: "Enter your mobile No",
                            labelStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: mobileNoFocusNode.hasFocus
                                    ? kGreenColor
                                    : kGreyColor),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        SizedBox(
                          height: 40.h,
                          width: size.width.w,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0.r),
                              )),
                              backgroundColor:
                                  MaterialStateProperty.all(kGreenColor),
                            ),
                            onPressed: () {
                              Get.to(const OtpScreen());
                            },
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  fontSize: 15.sp, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                      ],
                    ),
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
