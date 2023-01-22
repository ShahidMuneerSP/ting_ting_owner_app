import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ting_ting_app/core/colors/color.dart';
import 'package:ting_ting_app/screens/add_bus/add_bus_screen.dart';
import 'package:ting_ting_app/screens/home/widgets/bus_details_card_widget.dart';
import 'package:ting_ting_app/screens/home/widgets/my_drawer_list_widget.dart';

import 'widgets/my_header_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: backgroundColor,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: backgroundColor,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              size: 30.r,
              color: kBlackColor,
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
                color: kGreenColor),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kGreenColor)),
                  onPressed: () {
                    Get.to(const AddBusScreen());
                  },
                  child: const Text(
                    "Add Bus",
                    style: TextStyle(color: backgroundColor),
                  )),
            ),
          ]),
      body: Column(children: [
        SizedBox(
          height: 170.h,
          width: size.width,
          child: SvgPicture.asset("assets/Bus Stop-pana (1).svg"),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => const BusDetailsCardWidget(
              busName: 'Bharathi Travels',
              category: 'Limited Stop',
              number: 'KA 07 AC 0766',
              route: 'Kakkanad to Aluva',
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        )
      ]),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            color: backgroundColor,
            child: Column(
              children: [
                const MyHeaderDrawer(),
                Divider(
                  color: kDividerGreyColor,
                ),
                myDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
