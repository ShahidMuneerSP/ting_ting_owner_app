import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AddStopScreen extends StatefulWidget {
  const AddStopScreen({Key? key}) : super(key: key);

  @override
  State<AddStopScreen> createState() => _AddStopScreenState();
}

class _AddStopScreenState extends State<AddStopScreen> {
  String text = '';
  bool shouldDisplay = false;
  TextEditingController selectTripController = TextEditingController();
  TextEditingController stopNameController = TextEditingController();
  TextEditingController selectTimeController = TextEditingController();
  FocusNode selectTripFocusNode = FocusNode();
  FocusNode stopNameFocusNode = FocusNode();
  FocusNode selectTimeFocusNode = FocusNode();
  @override
  void initState() {
    selectTimeController.text = "";
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
          "Add Stop",
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
                controller: selectTripController,
                focusNode: selectTripFocusNode,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(255, 87, 201, 140),
                    ),
                  ),
                  suffixIcon: const Icon(
                    Icons.route,
                    color: Colors.black54,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(255, 87, 201, 140),
                    ),
                  ),
                  labelText: 'Select Trip',
                  labelStyle: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: selectTripFocusNode.hasFocus
                          ? const Color.fromARGB(255, 87, 201, 140)
                          : Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
              child: TextFormField(
                controller: stopNameController,
                focusNode: stopNameFocusNode,
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
                    Icons.airline_stops,
                    color: Colors.black54,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: const Color.fromARGB(255, 87, 201, 140),
                    ),
                  ),
                  labelText: 'Stop Name',
                  labelStyle: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: stopNameFocusNode.hasFocus
                          ? const Color.fromARGB(255, 87, 201, 140)
                          : Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
              child: TextFormField(
                controller: selectTimeController,
                focusNode: selectTimeFocusNode,
                onTap: () async {
                  TimeOfDay? pickedTime = await showTimePicker(
                    initialTime: TimeOfDay.now(),
                    context: context,
                  );

                  if (pickedTime != null) {
                    print(pickedTime.format(context));
                    DateTime parsedTime = DateFormat.jm()
                        .parse(pickedTime.format(context).toString());

                    print(parsedTime);
                    String formattedTime =
                        DateFormat('HH:mm:ss').format(parsedTime);
                    print(formattedTime);

                    setState(() {
                      selectTimeController.text = formattedTime;
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
                      color: selectTimeFocusNode.hasFocus
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
                      shouldDisplay = !shouldDisplay;
                      selectTimeController.text;
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
              padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Selected Stops",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Container(
                height: 260.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 87, 201, 140)),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Column(
                  children: [
                    shouldDisplay
                        ? SizedBox(
                            height: 200.h,
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
                                    child: ListTile(
                                      title: Text(
                                        text,
                                        style: TextStyle(fontSize: 16.sp),
                                      ),
                                      subtitle: Text(selectTimeController.text,
                                          style: TextStyle(fontSize: 14.sp)),
                                      trailing: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.delete,
                                            color: Color.fromARGB(
                                                223, 183, 40, 27),
                                          )),
                                    ),
                                    // child: Row(
                                    
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
