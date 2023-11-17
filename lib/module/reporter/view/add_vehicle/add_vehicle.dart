import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:grarr/module/reporter/view/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:grarr/module/reporter/view/map_view/map_view.dart';
import 'package:grarr/module/reporter/widgets/app_logo_widget.dart';
import 'package:grarr/module/reporter/widgets/primary_btn.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';


import '../authentication_view/login/widgets/custom_textfield.dart';

class Add_Your_Vehicle extends StatefulWidget {
  const Add_Your_Vehicle({super.key});

  @override
  State<Add_Your_Vehicle> createState() => _Add_Your_VehicleState();
}

class _Add_Your_VehicleState extends State<Add_Your_Vehicle> {
  TextEditingController _car_name_Controller=TextEditingController();
  List carList=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant_Colors.primarycolor,
      appBar: AppBar(
        title: Column(
          children: [
            SizedBox(
              height: 0.01.sh,
            ),
            Logo(),
          ],
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Constant_Colors.primarycolor,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 0.05.sh,),
            Text(
              "Add Your Vehicles",
              style: Constant_Fonts.onboardingtitle,
            ),
            Text(
              "Add your vehicles to conveniently manage and track their details within your account "    ,         style: Constant_Fonts.lighttitle,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                      height: 0.06.sh,
                  

                      child: textField(
                        obscure: false,
                        controller: _car_name_Controller,
                        hintText: "Enter vehicle name",
                      )),
                ),
SizedBox(width: 10.w,),

                Container(
                  height: 0.05.sh,
                  child: ElevatedButton(
                    onPressed: () {
                      carList.add(_car_name_Controller);
                    },
                    child: Text("Add",style: Constant_Fonts.whitetxtbtn,),
                  ),
                ),


              ],
            ),
            SizedBox(height: 10,),
           // ListView.builder(
           //     itemCount: carList.length,
           //     itemBuilder: (context,index){
           //   return Container(
           //     child: Center(child: Text(carList[index].toString()),),
           //     height: 40,width: 100,decoration: BoxDecoration(color: Constant_Colors.dividercolor),);
           // }),

            Expanded(child: Container()),
            Primary_Btn(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavScreen()));

              },
              color: Constant_Colors.disable_btn,
              title: Text("Next"),
            ),
            SizedBox(
              height: 0.02.sh,
            ),

            SizedBox(height: 0.02.sh,),
          ],
        ),
      ),
    );
  }
}
