import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grarr/module/reporter/view/add_credit_card/add_credit_card.dart';
import 'package:grarr/module/reporter/view/credit_cards/credit_card.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';
import 'package:grarr/utils/constants/constant_images.dart';
class Setting_Screen extends StatefulWidget {
  const Setting_Screen({super.key});

  @override
  State<Setting_Screen> createState() => _Setting_ScreenState();
}

class _Setting_ScreenState extends State<Setting_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
       automaticallyImplyLeading: false,
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
          SettingCards(ontap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Add_Credit_Card()));},icon:  Constant_Images.settingscreencardicon,text:  Text("Credit Card",style: Constant_Fonts.blacktextfont2,),trailingicon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),),
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
     this.icon,
     this.text,
this.trailingicon,
     required this.ontap,
  });
   var icon;
   var text;
   var trailingicon;
   var ontap;

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
