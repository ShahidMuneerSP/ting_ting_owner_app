import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ting_ting_app/screens/home/add_bus_screen.dart';
import 'package:ting_ting_app/screens/home/bus_route_screen.dart';


import 'my_header_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              size: 30.r,
              color: Colors.black,
            ),
            onPressed: () => scaffoldKey.currentState?.openDrawer(),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
          centerTitle: true,
          title: Text(
            "Ting Ting",
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 87, 201, 140)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 87, 201, 140))),
                  onPressed: () {
                    Get.to(const AddBusScreen());
                  },
                  child: const Text(
                    "Add Bus",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ]),
      body: ListView(children: [
        SizedBox(
          height: 170.h,
          width: size.width,
          child: SvgPicture.asset("assets/Bus Stop-pana (1).svg"),
        ),
        const BusDetailsCardWidget(
          busName: 'Bharathi Travels',
          number: 'KA 07 AC 0766 ',
          category: 'Limited Stop',
          route: 'Kakkanad to Aluva',
        ),
        const BusDetailsCardWidget(
          busName: 'Royal Travels',
          number: 'KA 09 AC 9041',
          category: 'limited Stop',
          route: 'Aluva to Edappally',
        ),
        const BusDetailsCardWidget(
          busName: 'V2K Travels',
          number: 'KA 51 AC 9001',
          category: 'Limited Stop',
          route: 'Airport to FortKochi',
        ),
        const BusDetailsCardWidget(
          busName: 'OT Travels',
          number: 'KA 55 AC 9001',
          category: 'Limited Stop',
          route: 'Airport to FortKochi',
        ),
        SizedBox(
          height: 30.h,
        )
      ]),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                const MyHeaderDrawer(),
                Divider(
                  color: Colors.grey[600],
                ),
                myDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget myDrawerList() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          InkWell(
            onTap: () => Get.back(),
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, top: 20.h),
              child: Row(
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.grey[600],
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 87, 201, 140),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, top: 30.h),
              child: Row(
                children: [
                  Icon(
                    Icons.info,
                    color: Colors.grey[600],
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    "About Us",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 87, 201, 140),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, top: 30.h),
              child: Row(
                children: [
                  Icon(
                    Icons.call_rounded,
                    color: Colors.grey[600],
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    "Contact Us",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 87, 201, 140),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, top: 30.h),
              child: Row(
                children: [
                  Icon(
                    Icons.message,
                    color: Colors.grey[600],
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    "Feedback",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 87, 201, 140),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BusDetailsCardWidget extends StatelessWidget {
  const BusDetailsCardWidget({
    Key? key,
    required this.busName,
    required this.number,
    required this.category,
    required this.route,
  }) : super(key: key);
  final String busName;
  final String number;
  final String category;
  final String route;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(const BusRouteScreen()),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Color.fromARGB(255, 87, 201, 140),
              ),
              borderRadius: BorderRadius.circular(10.r)),
          child: Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: SizedBox(
              height: 110.h,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  SizedBox(
                    height: 110.h,
                    width: 280.w,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Row(
                            children: [
                              Icon(
                                Icons.directions_bus,
                                size: 20.r,
                                color: const Color.fromARGB(255, 87, 201, 140),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                "Bus Name : ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color:
                                        const Color.fromARGB(255, 66, 64, 64)),
                              ),
                              Text(busName,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp,
                                      color: Colors.black)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: Row(
                            children: [
                              Icon(
                                Icons.confirmation_number,
                                size: 20.r,
                                color: const Color.fromARGB(255, 87, 201, 140),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                "Number : ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color:
                                        const Color.fromARGB(255, 66, 64, 64)),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(number,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp,
                                      color: Colors.black)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: Row(
                            children: [
                              Icon(
                                Icons.category,
                                size: 20.r,
                                color: const Color.fromARGB(255, 87, 201, 140),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                "Category : ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color:
                                        const Color.fromARGB(255, 66, 64, 64)),
                              ),
                              SizedBox(
                                width: 9.w,
                              ),
                              Text(category,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp,
                                      color: Colors.black)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.h, bottom: 10.h),
                          child: Row(
                            children: [
                              Icon(
                                Icons.route,
                                size: 20.r,
                                color: const Color.fromARGB(255, 87, 201, 140),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                "Route : ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color:
                                        const Color.fromARGB(255, 66, 64, 64)),
                              ),
                              SizedBox(
                                width: 31.w,
                              ),
                              Text(route,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.sp,
                                      color: Colors.black)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height: 115.h,
                      width: 30.w,
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.delete,
                                color: Color.fromARGB(255, 209, 50, 39),
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.black54,
                              )),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
