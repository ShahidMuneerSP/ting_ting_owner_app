import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ting_ting_app/screens/home/add_stop_screen.dart';
import 'package:ting_ting_app/screens/home/add_trip_screen.dart';

class AddBusScreen extends StatefulWidget {
  const AddBusScreen({Key? key}) : super(key: key);

  @override
  State<AddBusScreen> createState() => _AddBusScreenState();
}

class _AddBusScreenState extends State<AddBusScreen> {
  final items = ['Limited Stop', 'Local', 'Super Fast', 'TT'];
  String? value;
  TextEditingController busNameController = TextEditingController();
  TextEditingController busNumberController = TextEditingController();
  FocusNode busNameFocusNode = FocusNode();
  FocusNode busNumberFocusNode = FocusNode();
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
          "Add Bus",
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
            Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
              child: TextFormField(
                controller: busNameController,
                focusNode: busNameFocusNode,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(255, 87, 201, 140),
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.directions_bus,
                    color: Color.fromARGB(255, 87, 201, 140),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(255, 87, 201, 140),
                    ),
                  ),
                  labelText: 'Bus Name',
                  labelStyle: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: busNameFocusNode.hasFocus
                          ? const Color.fromARGB(255, 87, 201, 140)
                          : Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
              child: TextFormField(
                controller: busNumberController,
                focusNode: busNumberFocusNode,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(255, 87, 201, 140),
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.confirmation_num,
                    color: Color.fromARGB(255, 87, 201, 140),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(255, 87, 201, 140),
                    ),
                  ),
                  labelText: 'Bus Number',
                  labelStyle: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: busNameFocusNode.hasFocus
                          ? const Color.fromARGB(255, 87, 201, 140)
                          : Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
              child: DropdownButtonHideUnderline(
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 87, 201, 140),
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    prefixIcon: const Icon(Icons.category,
                        color: Color.fromARGB(255, 87, 201, 140)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(
                        width: 1.w,
                        color: const Color.fromARGB(255, 87, 201, 140),
                      ),
                    ),
                  ),
                  hint: Text('Category',
                      style: TextStyle(
                          color: Colors.grey,
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
            ),
            GestureDetector(
              onTap: () {
                Get.to(const AddTripScreen());
              },
              child: Padding(
                padding: EdgeInsets.only(right: 30.w, left: 30.w, top: 10.h),
                child: Container(
                  height: 50.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 87, 201, 140),
                    ),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.route,
                          color: Color.fromARGB(255, 87, 201, 140),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text("Add Trip",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(AddStopScreen());
              },
              child: Padding(
                padding: EdgeInsets.only(right: 30.w, left: 30.w, top: 10.h),
                child: Container(
                  height: 50.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 87, 201, 140),
                    ),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.airline_stops,
                          color: Color.fromARGB(255, 87, 201, 140),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text("Add Stops",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
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
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 87, 201, 140)),
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
