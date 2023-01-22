import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ting_ting_app/core/colors/color.dart';
import 'package:ting_ting_app/screens/add_bus/widgets/add_stops_button.dart';
import 'package:ting_ting_app/screens/add_bus/widgets/add_trip_button_widget.dart';
import 'package:ting_ting_app/screens/add_bus/widgets/category_dropdown_widget.dart';
import 'package:ting_ting_app/widgets/custom_textfield.dart';

class AddBusScreen extends StatefulWidget {
  const AddBusScreen({Key? key}) : super(key: key);

  @override
  State<AddBusScreen> createState() => _AddBusScreenState();
}

class _AddBusScreenState extends State<AddBusScreen> {
  String? value;
  TextEditingController busNameController = TextEditingController();
  TextEditingController busNumberController = TextEditingController();
  FocusNode busNameFocusNode = FocusNode();
  FocusNode busNumberFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
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
          "Add Bus",
          style: TextStyle(
              fontSize: 18.sp, color: kBlackColor, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Bus Name textfield
            Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
              child: CustomTextFormField(
                focusNode: busNameFocusNode,
                controller: busNameController,
                labelText: 'Bus Name',
                prefixIcon:
                    const Icon(Icons.directions_bus, color: kGreenColor),
              ),
            ),
            //Bus Number textfield
            Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
              child: CustomTextFormField(
                focusNode: busNumberFocusNode,
                controller: busNumberController,
                labelText: 'Bus Number',
                prefixIcon:
                    const Icon(Icons.confirmation_num, color: kGreenColor),
              ),
            ),
            //category dropdown
            const CategoryDropdownWidget(),
            //Add trip button
            const AddTripButtonWidget(),
            //Add Stop button
            const AddStopsButtonWidget(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
              child: SizedBox(
                height: 40.h,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0.r),
                    )),
                    backgroundColor: MaterialStateProperty.all(kGreenColor),
                  ),
                  onPressed: () {
                    Get.back();
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

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(item,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp)),
      );
}
