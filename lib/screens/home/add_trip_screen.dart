import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AddTripScreen extends StatefulWidget {
  const AddTripScreen({Key? key}) : super(key: key);

  @override
  State<AddTripScreen> createState() => _AddTripScreenState();
}

class _AddTripScreenState extends State<AddTripScreen> {
  String text = '';
  String newtext = '';
  bool shouldDisplaytrip = false;
  TextEditingController fromPlaceController = TextEditingController();
  TextEditingController fromTimeController = TextEditingController();
  TextEditingController toPlaceController = TextEditingController();
  TextEditingController toTimeController = TextEditingController();
  FocusNode fromPlaceFocusNode = FocusNode();
  FocusNode fromTimeFocusNode = FocusNode();
  FocusNode toPlaceFocusNode = FocusNode();
  FocusNode toTimeFocusNode = FocusNode();
  @override
  void initState() {
    fromTimeController.text = "";
    toTimeController.text = "";
    super.initState();
  }

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
        title:  Text(
          "Add Trip",
          style: TextStyle(fontSize:18.sp,color: Colors.black, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
              child: TextFormField(
                controller: fromPlaceController,
                focusNode: fromPlaceFocusNode,
                onChanged: (value) {
                  setState(() {
                    text = value;
                  });
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(255, 87, 201, 140),
                    ),
                  ),
                  suffixIcon: const Icon(
                    Icons.location_searching,
                    color: Colors.black54,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(255, 87, 201, 140),
                    ),
                  ),
                  labelText: 'From Place',
                  labelStyle: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: fromPlaceFocusNode.hasFocus
                          ? const Color.fromARGB(255, 87, 201, 140)
                          : Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
              child: TextFormField(
                controller: fromTimeController,
                focusNode: fromTimeFocusNode,
                onTap: () async {
                  TimeOfDay? pickedTime = await showTimePicker(
                    initialTime: TimeOfDay.now(),
                    context: context,
                  );

                  if (pickedTime != null) {
                    print(pickedTime.format(context)); //output 10:51 PM
                    DateTime parsedTime = DateFormat.jm()
                        .parse(pickedTime.format(context).toString());
                    //converting to DateTime so that we can further format on different pattern.
                    print(parsedTime); //output 1970-01-01 22:53:00.000
                    String formattedTime =
                        DateFormat('HH:mm:ss').format(parsedTime);
                    print(formattedTime); //output 14:59:00
                    //DateFormat() is from intl package, you can format the time on any pattern you need.

                    setState(() {
                      fromTimeController.text =
                          formattedTime; //set the value of text field.
                    });
                  } else {
                    print("Time is not selected");
                  }
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(255, 87, 201, 140),
                    ),
                  ),
                  suffixIcon: const Icon(
                    Icons.more_time_outlined,
                    color: Colors.black54,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(255, 87, 201, 140),
                    ),
                  ),
                  labelText: 'From Time',
                  labelStyle: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: fromTimeFocusNode.hasFocus
                          ? Color.fromARGB(255, 22, 40, 30)
                          : Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
              child: TextFormField(
                controller: toPlaceController,
                focusNode: toPlaceFocusNode,
                onChanged: (value) {
                  setState(() {
                    newtext = value;
                  });
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(255, 87, 201, 140),
                    ),
                  ),
                  suffixIcon: const Icon(
                    Icons.location_searching,
                    color: Colors.black54,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(255, 87, 201, 140),
                    ),
                  ),
                  labelText: 'To Place',
                  labelStyle: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: toPlaceFocusNode.hasFocus
                          ? const Color.fromARGB(255, 87, 201, 140)
                          : Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
              child: TextFormField(
                controller: toTimeController,
                focusNode: toTimeFocusNode,
                onTap: () async {
                  TimeOfDay? pickedTime = await showTimePicker(
                    initialTime: TimeOfDay.now(),
                    context: context,
                  );

                  if (pickedTime != null) {
                    print(pickedTime.format(context));
                    DateTime parsedTime = DateFormat.jm()
                        .parse(pickedTime.format(context).toString());
                    //converting to DateTime so that we can further format on different pattern.
                    print(parsedTime); //output 1970-01-01 22:53:00.000
                    String formattedTime =
                        DateFormat('HH:mm:ss').format(parsedTime);
                    print(formattedTime); //output 14:59:00
                    //DateFormat() is from intl package, you can format the time on any pattern you need.

                    setState(() {
                      toTimeController.text =
                          formattedTime; //set the value of text field.
                    });
                  } else {
                    print("Time is not selected");
                  }
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(255, 87, 201, 140),
                    ),
                  ),
                  suffixIcon: const Icon(
                    Icons.more_time_outlined,
                    color: Colors.black54,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(255, 87, 201, 140),
                    ),
                  ),
                  labelText: 'Select Time',
                  labelStyle: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: toTimeFocusNode.hasFocus
                          ? const Color.fromARGB(255, 87, 201, 140)
                          : Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h),
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
                    setState(() {
                      shouldDisplaytrip = !shouldDisplaytrip;
                      fromTimeController.text;

                      toTimeController.text;
                    });
                  },
                  child: Text(
                    'Accept',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Container(
                height: 230.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 87, 201, 140)),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Column(
                  children: [
                    shouldDisplaytrip
                        ? SizedBox(
                            height: 170.h,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.w, right: 10.w, top: 10.h),
                                  child: Container(
                                    height: 60.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 87, 201, 140))),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: 10.h,
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "From: $text",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.sp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              Text(
                                                "Time: ${fromTimeController.text}",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.sp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 20.w,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "To: $newtext",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.sp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              Text(
                                                "Time: ${toTimeController.text}",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.sp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                          const Spacer(),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 15.h),
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.delete,
                                                  color: Color.fromARGB(
                                                      223, 183, 40, 27),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ))
                        : Spacer(),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 10.w, right: 10.w, top: 10),
                      child: SizedBox(
                        height: 40.h,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0.r),
                            )),
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 87, 201, 140)),
                          ),
                          onPressed: () {
                            Get.back();
                          },
                          child: Text(
                            'Done',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
