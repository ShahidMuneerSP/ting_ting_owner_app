import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ting_ting_app/core/colors/color.dart';

class CategoryDropdownWidget extends StatelessWidget {
  const CategoryDropdownWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: kGreenColor),
              borderRadius: BorderRadius.circular(10.r),
            ),
            prefixIcon: const Icon(Icons.category, color: kGreenColor),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(width: 1.w, color: kGreenColor),
            ),
          ),
          hint: Text('Category',
              style: TextStyle(
                  color: kGreyColor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400)),
          items: <String>['Limited Stop', 'Local', 'Super Fast', 'TT']
              .map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    value,
                    style: TextStyle(
                        fontSize: 15.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            );
          }).toList(),
          onChanged: (_) {},
        ),
      ),
    );
  }
}