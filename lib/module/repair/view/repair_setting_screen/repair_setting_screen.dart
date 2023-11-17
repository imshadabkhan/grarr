import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grarr/module/repair/view/add_credit_card2/add_credit_card2.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';
import 'package:grarr/utils/constants/constant_images.dart';
class Repair_Setting_Screen extends StatefulWidget {
  const Repair_Setting_Screen({super.key});

  @override
  State<Repair_Setting_Screen> createState() => _Repair_Setting_ScreenState();
}

class _Repair_Setting_ScreenState extends State<Repair_Setting_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.sp),
            ),
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
              ),
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Constant_Colors.primarycolor,
        centerTitle: true,
        title: Text(
          "Settings",
          style: Constant_Fonts.onboardingtitle,
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
        child: Column(children: [
          SettingCards(ontap:(){},icon:  Constant_Images.settingscreenrepairicon,text:  Text("Repair History",style: Constant_Fonts.blacktextfont2,),trailingicon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),),
          SettingCards(ontap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Add_Credit_Card2(),));},icon:  Constant_Images.settingscreencardicon,text:  Text("Credit Card",style: Constant_Fonts.blacktextfont2,),trailingicon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),),
          SettingCards(ontap:(){},icon:  Constant_Images.settingscreenpaymenticon,text:  Text("My Wallet",style: Constant_Fonts.blacktextfont2,),trailingicon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),),
          SettingCards(ontap:(){},icon:  Constant_Images.settingscreenlogouticon,text:  Text("Log Out",style: Constant_Fonts.redColorBold,),),

        ],),
      )
    );
  }
}

class SettingCards extends StatelessWidget {
   SettingCards({

    super.key,
     required this.ontap,
     this.icon,
     this.text,
this.trailingicon,
  });
   var ontap;
   var icon;
   var text;
   var trailingicon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 4.0),
      child: Card(

elevation: 0.5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.sp)),
          child: ListTile(
              onTap: ontap,
              leading: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Container(
              width: 200.w,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  icon,

                  Container(width: 8.w,),
                  text,
                ],
              ),
            ),
          ),trailing: trailingicon)),
    );
  }
}
