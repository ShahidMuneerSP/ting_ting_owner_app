import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'otp_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController mobileNo = TextEditingController();
  FocusNode mobileNoFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 70.h),
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  height: 210.h,
                  width: 250.w,
                  child: SvgPicture.asset(
                    "assets/Enter OTP-amico.svg",
                  )),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Sign In",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
            ),
            // Padding(
            //   padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
            //   child: IntlPhoneField(
            //     decoration: InputDecoration(
            //       labelText: 'Enter your mobile No',
            //       labelStyle: TextStyle(
            //           fontSize: 15.sp,
            //           fontWeight: FontWeight.w500,
            //           color: mobileNoFocusNode.hasFocus
            //               ? const Color.fromARGB(255, 87, 201, 140)
            //               : Colors.grey),
            //       enabledBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(10.r),
            //         borderSide: BorderSide(
            //           width: 1.w,
            //           color: const Color.fromARGB(255, 87, 201, 140),
            //         ),
            //       ),
            //       focusedBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(10.r),
            //         borderSide: BorderSide(
            //           width: 1.w,
            //           color: const Color.fromARGB(255, 87, 201, 140),
            //         ),
            //       ),
            //     ),
            //     initialCountryCode: 'IN',
            //   ),
            // ),

            Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
//             child:  TextFormField(
//   autofocus: false,
//   controller: mobileNo,
//   decoration: InputDecoration(
//     border: UnderlineInputBorder(),
//     hintText: '0,00',
//     prefixText: '\$ ',
//     labelText: 'Price',
//     floatingLabelBehavior: FloatingLabelBehavior.always,
//   ),
//   textInputAction: TextInputAction.next,
//   keyboardType: TextInputType.number,
//   inputFormatters: [
//     FilteringTextInputFormatter.digitsOnly,
//     CurrencyFormatter(), // My currency formatter
//   ],
//   enableSuggestions: true,
//   enableInteractiveSelection: true,
//   toolbarOptions: ToolbarOptions(
//     copy: true,
//     cut: true,
//     paste: true,
//     selectAll: true,
//   ),
// );
              child: TextFormField(
                controller: mobileNo,
                focusNode: mobileNoFocusNode,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(255, 87, 201, 140),
                    ),
                  ),
                  
                  // prefixText: '+91',
                  // prefixStyle: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600,color: Colors.black),
                 prefixIcon: Padding(
                    padding: EdgeInsets.only(top: 12.h, left: 7.w),
                    child: Text(
                      "+91",
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.w600,color: Colors.black),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(255, 87, 201, 140),
                    ),
                  ),
                  labelText: "Enter your mobile No",
                  labelStyle: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: mobileNoFocusNode.hasFocus
                          ? const Color.fromARGB(255, 87, 201, 140)
                          : Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
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
                    Get.to(const OtpScreen());
                  },
                  child: Text(
                    'Submit',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
