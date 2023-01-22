import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ting_ting_app/core/colors/color.dart';

///custom textformfield
// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    required this.focusNode,
    required this.controller,
    this.hintText,
    required this.labelText,
    this.validatorText,
    required this.prefixIcon,
    this.validator,
    this.obsecureText = false,
    this.readOnly = false,
    this.inputFormatters,
    
    this.onTap,
  });

  Widget prefixIcon;
  TextEditingController controller;
  FocusNode focusNode;
  String? hintText;
  String labelText;
  String? validatorText;
  // ignore: prefer_typing_uninitialized_variables
  var validator;
  bool obsecureText;
  bool readOnly;
  List<TextInputFormatter>? inputFormatters;
  
  // ignore: prefer_typing_uninitialized_variables
  var onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      // onTap: onTap,
      controller: controller,
      validator: validator ??
          (value) {
            if (value == null || value.trim().isEmpty) {
              return validatorText;
            }
            return null;
          },
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(width: 1.w, color: kGreenColor),
        ),
        prefixIcon: prefixIcon,
       
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(width: 1.w, color: kGreenColor),
        ),
        labelText: labelText,
        labelStyle: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
            color: focusNode.hasFocus ? kGreenColor : kGreyColor),
      ),
    );
  }
}
