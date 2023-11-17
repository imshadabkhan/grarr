import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grarr/module/repair/view/active_reports/active_reports_view.dart';
import 'package:grarr/module/repair/view/active_reports/widget/report_tile.dart';
import 'package:grarr/module/reporter/widgets/app_logo_widget.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';
import 'package:grarr/utils/constants/constant_images.dart';

class Active_Reports extends StatefulWidget {
  const Active_Reports({super.key});

  @override
  State<Active_Reports> createState() => _Active_ReportsState();
}

class _Active_ReportsState extends State<Active_Reports> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      floatingActionButton: FloatingActionButton(onPressed:(){},child: Constant_Images.addreport,),
      appBar: AppBar(
      backgroundColor: Constant_Colors.primarycolor,
      elevation: 0,
      centerTitle: true,
      leading: Padding(
        padding: EdgeInsets.all(8.0),
        child: Constant_Images.menu,
      ),
      title:Padding(
        padding:  EdgeInsets.only(left: 0.09.sw),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Logo(),
        Constant_Images.notification_bell

        ],),
      )



    ),
    body: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 12.0,vertical: 10),
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 5,),
          Row(children: [
            Text("Active Reports (2)",style: Constant_Fonts.onboardingh2,),
          ],),
          SizedBox(height: 10,),
          Report_Tile(
              statuscolor: Colors.green,
              title: "Report Status",subtitle: "ongoing",trailing:CircleAvatar(radius:12,backgroundColor: Colors.orange,child: Text("5",style: Constant_Fonts.whitetextfont2,),)),
          SizedBox(height: 10,),
          Report_Tile(
              statuscolor: Colors.orange,
              title: "Report Status",subtitle: "awaiting"),



        ],),
      ),
    ),);
  }
}


