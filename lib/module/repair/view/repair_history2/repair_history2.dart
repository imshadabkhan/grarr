import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';
import 'package:grarr/utils/constants/constant_images.dart';

class Repair_History2 extends StatefulWidget {
  const Repair_History2({super.key});

  @override
  State<Repair_History2> createState() => _Repair_History2State();
}

class _Repair_History2State extends State<Repair_History2> {
  void _show_Dialog(BuildContext _context) async {
    return showDialog(

        context: _context,
        builder: (BuildContext context) {
          return AlertDialog(

            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.sp)),
            title: Center(
                child: Text(
                  "Details",
                  style: Constant_Fonts.onboardingtitle,
                )),
            content: Container(
              height: 0.5.sh,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.sp)),


              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Damage Type",
                    style: Constant_Fonts.lighttitle,
                  ),
                  Text(
                    "Collision",
                    style: Constant_Fonts.blacktextfont2,
                  ),
                  SizedBox(
                    height: 0.01.sh,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Repaired By",
                            style: Constant_Fonts.lighttitle,
                          ),
                          Text(
                            "John Doe",
                            style: Constant_Fonts.blacktextfont2,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Contact",
                            style: Constant_Fonts.lighttitle,
                          ),
                          Text(
                            "0345-5243486",
                            style: Constant_Fonts.blacktextfont2,
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 0.01.sh,
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Location",style: Constant_Fonts.lighttitle,),
                      SizedBox(
                        height:0.005.sh,
                      ),
                      Row(
                        children: [
                          Constant_Images.location_icon,
                          Text(
                            "2715 Ash Dr.San jose,South",
                            style: Constant_Fonts.blacktextfont2,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.01.sh,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Date",style: Constant_Fonts.lighttitle,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Constant_Images.calendar,
                              Padding(
                                padding: EdgeInsets.only(left: 4.0, top: 5),
                                child: Text(
                                  "Date here",
                                  style: Constant_Fonts.blacktextfont2,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 0.03.sh,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Time",style: Constant_Fonts.lighttitle,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Constant_Images.clock,
                                Padding(
                                  padding: EdgeInsets.only(top: 4.0, left: 8),
                                  child: Text(
                                    "Time here",
                                    style: Constant_Fonts.blacktextfont2,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.01.sh,
                  ),
                  Text(
                    "Images",
                    style: Constant_Fonts.lighttitle,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Constant_Images.dent_car,
                      SizedBox(
                        width: 10.w,
                      ),
                      Constant_Images.dent2
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext _context) {
    return Scaffold(
      backgroundColor: Constant_Colors.primarycolor,
      appBar: AppBar(
        backgroundColor: Constant_Colors.primarycolor,
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 0.05.sh,
            width: 0.05.sw,
            decoration: BoxDecoration(
              color: Constant_Colors.superwhite,
              borderRadius: BorderRadius.circular(10.sp),
            ),
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            ),
          ),
        ),
        title: Text(
          "Repair History",
          style: Constant_Fonts.onboardingtitle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 20.w),
        child: Column(
          children: [
            Repair_History_Card(
              onTap: () => _show_Dialog(_context),
            ),
          ],
        ),
      ),
    );
  }
}

class Repair_History_Card extends StatelessWidget {
  Repair_History_Card({
    required this.onTap,
  });
  var onTap;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2), // Shadow color
                  spreadRadius: 2, // How far the shadow spreads
                  blurRadius: 5, // The blur effect of the shadow
                  offset: Offset(0, 1), // Offset of the shadow
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(10.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Damage Type : ",
                              style: Constant_Fonts.lighttitle,
                            ),
                            Text(
                              "Collisioin",
                              style: Constant_Fonts.blacktextfont2,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4.0.h, left: 4.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Repaired By : ",
                              style: Constant_Fonts.lighttitle,
                            ),
                            Text(
                              "John Doe",
                              style: Constant_Fonts.blacktextfont2,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 6.0, top: 12),
                        child: Row(
                          children: [
                            Constant_Images.location_icon,
                            Text(
                              "2715 Ash Dr.San Jose, South Dakota ",
                              style: Constant_Fonts.blacktextfont2,
                              textAlign: TextAlign.start,
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Constant_Images.calendar,
                              Padding(
                                padding: EdgeInsets.only(left: 4.0, top: 5),
                                child: Text(
                                  "Date here",
                                  style: Constant_Fonts.blacktextfont2,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 0.03.sh,
                          ),
                          Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Constant_Images.clock,
                                Padding(
                                  padding: EdgeInsets.only(top: 4.0, left: 8),
                                  child: Text(
                                    "Time here",
                                    style: Constant_Fonts.blacktextfont2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 61,
          left: 250,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                child: Constant_Images.dent_car,
                height: 60.h,
                width: 60.w,
              ),
              Text(
                "+1",
                style: Constant_Fonts.onboardingwhiteh2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
