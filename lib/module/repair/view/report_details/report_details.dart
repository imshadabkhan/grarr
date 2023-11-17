import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';
import 'package:grarr/utils/constants/constant_images.dart';

class Report_Details extends StatefulWidget {
  const Report_Details({super.key});

  @override
  State<Report_Details> createState() => _Report_DetailsState();
}

class _Report_DetailsState extends State<Report_Details> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant_Colors.primarycolor,
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.all(8.sp),
          child: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Report Details",
          style: Constant_Fonts.onboardingtitle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 0.3.sh,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.sp),
                  color: Constant_Colors.lightgrey2),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Vehicles",
                      style: Constant_Fonts.onboardingh2,
                    ),
                    Text(
                      "Toyota Corolla, Honda Civic",
                      style: Constant_Fonts.lighttitle,
                    ),
                    Text(
                      "Damage Type",
                      style: Constant_Fonts.onboardingh2,
                    ),
                    Text(
                      "collision damage, dents, paint damage",
                      style: Constant_Fonts.lighttitle,
                    ),
                    Text(
                      "Damage Images",
                      style: Constant_Fonts.onboardingh2,
                    ),
                    Row(
                      children: [
                        Container(

                            child: Constant_Images.dent_car),
                        SizedBox(
                          width: 0.02.sw,
                        ),
                        Container(child: Constant_Images.dent2)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 0.02.sh,
            ),
            Text(
              status == false ? "Repair Offers (2)" : "Assigned to",
              style: Constant_Fonts.onboardingh2,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: status == false ? 2 : 1,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: status == false
                          ? Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10.sp),),
                              child: Column(
                                children: [
                                  ListTile(
                                    trailing: Text(
                                      "\$200",
                                      style: Constant_Fonts.blacktextfontbold,
                                    ),
                                    leading: Constant_Images.person1,
                                    title: Text(
                                      "Jimmy Neesham",
                                      style: Constant_Fonts.blacktextfont2,
                                    ),
                                    subtitle: Row(
                                      children: [
                                        Text(
                                          "4.8",
                                          style: Constant_Fonts.lighttitle2,
                                        ),
                                        SizedBox(
                                          width: 0.01.sw,
                                        ),
                                        Constant_Images.review_star,
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.w, vertical: 10.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.red, width: 2.w),
                                              borderRadius:
                                                  BorderRadius.circular(10.sp)),
                                          width: 0.4.sw,
                                          height: 0.05.sh,
                                          child: Center(
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(

                                                  backgroundColor: Colors.grey
                                                      .withOpacity(0.2),
                                                  elevation: 0,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.sp))),
                                              onPressed: () {},
                                              child: Center(
                                                  child: Text(
                                                "Decline",
                                                style:
                                                    Constant_Fonts.redColorBold,
                                              )),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 0.4.sw,
                                          height: 0.05.sh,
                                          child: ElevatedButton(

                                            style: ElevatedButton.styleFrom(

                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.sp))),
                                            onPressed: () {
                                              setState(() {
                                                status = true;
                                              });
                                            },
                                            child: Center(
                                              child: Text(
                                                "Accept",
                                                style:
                                                    Constant_Fonts.whitetxtbtn,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10.sp)),
                              child: Column(
                                children: [
                                  ListTile(
                                    trailing: Text(
                                      "\$200",
                                      style: Constant_Fonts.blacktextfontbold,
                                    ),
                                    leading: Constant_Images.person1,
                                    title: Text(
                                      "Jimmy Neesham",
                                      style: Constant_Fonts.blacktextfont2,
                                    ),
                                    subtitle: Row(
                                      children: [
                                        Text(
                                          "4.8",
                                          style: Constant_Fonts.lighttitle2,
                                        ),
                                        SizedBox(
                                          width: 0.01.sw,
                                        ),
                                        Constant_Images.review_star,
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.w, vertical: 10.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.sp)),
                                          width: 0.4.sw,
                                          height: 0.05.sh,
                                          child: Center(
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.black,
                                                  elevation: 0,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.sp))),
                                              onPressed: () {},
                                              child: Center(
                                                  child: Text(
                                                "Chat",
                                                style:
                                                    Constant_Fonts.whitetxtbtn,
                                              )),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 0.4.sw,
                                          height: 0.05.sh,
                                          child: ElevatedButton(

                                            style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.sp))),
                                            onPressed: () {
                                              setState(() {
                                                status = true;
                                              });
                                            },
                                            child: Center(
                                              child: Text(
                                                "Pay",
                                                style:
                                                    Constant_Fonts.whitetxtbtn,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
