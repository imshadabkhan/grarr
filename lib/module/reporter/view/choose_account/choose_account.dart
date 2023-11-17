import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grarr/module/repair/view/bottom_navigation_bar/bottom_navigation_bar.dart';


import 'package:grarr/module/reporter/view/add_vehicle/add_vehicle.dart';

import 'package:grarr/module/reporter/widgets/app_logo_widget.dart';
import 'package:grarr/module/reporter/widgets/primary_btn.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';

class Select_Account extends StatefulWidget {
  Select_Account({super.key});

  @override
  State<Select_Account> createState() => _Select_AccountState();
}

class _Select_AccountState extends State<Select_Account> {
  bool status1 = false;
  bool status2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant_Colors.primarycolor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 0.05.sh),
            Logo(),
            SizedBox(height: 0.06.sh),
            AutoSizeText(

              "Choose Account Type",
              style: Constant_Fonts.onboardingtitle,
              maxLines: 2,
            ),
            AutoSizeText(
              "Choosing your role will coustomize the app experience based on your specific need",
              style: Constant_Fonts.lighttitle,
              maxLines: 2,
            ),
            SizedBox(height: 0.02.sh),
            Row(
              children: [
                Unfocused_Box(
                  onTap: () {
                    status1 = true;
                    if (status1 == true) {
                      status2 = false;
                    }

                    setState(() {});
                  },
                  border: status1 == false
                      ? Border.all(
                      color: Constant_Colors.account_type_box_color,
                      width: 1)
                      : Border.all(
                      color: Constant_Colors.secondarycolor, width: 2),
                  image: status1 == false
                      ? Image(
                    image: AssetImage("assets/images/icons/repair.png"),
                    height: MediaQuery.sizeOf(context).height*.1/2,
                    width: MediaQuery.sizeOf(context).width,
                  )
                      : Image(
                    image: AssetImage("assets/images/icons/repair.png"),
                    height: MediaQuery.sizeOf(context).height*.1/2,
                    width: MediaQuery.sizeOf(context).width,
                    color: Constant_Colors.secondarycolor,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Unfocused_Box(
                  onTap: () {
                    status2 = true;

                    if (status2 == true) {
                      status1 = false;
                    }

                    setState(() {});
                  },
                  image: status2 == false
                      ? Image(
                      image: AssetImage(
                          "assets/images/icons/reporter_icon.png"),
                    height: MediaQuery.sizeOf(context).height*.1,
                    width: MediaQuery.sizeOf(context).width,)
                      : Image(
                    image: AssetImage(
                        "assets/images/icons/reporter_icon.png"),
                    height: MediaQuery.sizeOf(context).height*.1,
                    width: MediaQuery.sizeOf(context).width,
                    color: Constant_Colors.secondarycolor,
                  ),
                  border: status2 == false
                      ? Border.all(
                      color: Constant_Colors.account_type_box_color,
                      width: 1)
                      : Border.all(
                      color: Constant_Colors.secondarycolor, width: 2),
                ),
              ],
            ),
            SizedBox(
              height: 0.02.sh,
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    status1 == true
                        ? Repair_Txt_Points()
                        : Container(


                      width: MediaQuery.of(context).size.width,
                      color: Constant_Colors.primarycolor,
                    ),
                    status2 == true
                        ? Reporter_Txt_Points()
                        : Container(
                      width: MediaQuery.of(context).size.width,
                      color: Constant_Colors.primarycolor,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 0.02.sh,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [

                  Primary_Btn(
                    color: status1||status2==true?Constant_Colors.secondarycolor:Constant_Colors.disable_btn,
                    title: Text("Next"),
                    onTap: () {
                      status1||status2==true? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>status2==true?Add_Your_Vehicle():BottomNavScreen_RepairScreen(),
                        ),
                      ): null;
                    },
                  ),
                  SizedBox(
                    height: 0.02.sh,
                  ),

                  SizedBox(
                    height: 0.02.sh,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Reporter_Txt_Points extends StatelessWidget {
  const Reporter_Txt_Points({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        buildBulletPoint(
          "user can easily document and report vehicle  damages through the app ",
        ),
        buildBulletPoint(
            "capture photos, provide descriptions, and submit the information, making it convenient to report incidents or seek assistance"),
        buildBulletPoint(
            "streamline the repair process by connecting users with repair professionals"),
        buildBulletPoint(
            "reporter accounts have the opportunity to provide feedback and ratings on their repair experience"),
      ],
    );
  }
}

Widget buildBulletPoint(String text) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 1.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText("• ",
          style:
          TextStyle(fontSize: 16.0, color: Colors.black),), // Bullet point
        Expanded(
          child: AutoSizeText(
            text,
            maxLines: 3,
            style: Constant_Fonts.lighttitle,
          ),
        ),
      ],
    ),
  );
}

class Repair_Txt_Points extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        buildBulletPoint(
            "users can offer their repair services through the application and earn income."),
        buildBulletPoint(
            'allows users to have control over their schedules and availability.'),
        buildBulletPoint('users can tap into a larger customer base.'),
        buildBulletPoint(
          "seamless communication between repair professionals and customers",
        ),
        buildBulletPoint(
            "repair accounts enable users to built a reputation within the app community."),
      ],
    );
  }
}

class Unfocused_Box extends StatelessWidget {
  Unfocused_Box({
    super.key,
    required this.image,
    required this.onTap,
    required this.border,
  });

  Image image;
  Border border;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 0.2.sh,
          decoration: BoxDecoration(
              border: border,
              color: Constant_Colors.account_type_box_color,
              borderRadius: BorderRadius.circular(10)),
          child: image,
        ),
      ),
    );
  }
}

