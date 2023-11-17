import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:grarr/module/reporter/view/credit_cards/credit_card.dart';
import 'package:grarr/module/reporter/widgets/custom_textfield.dart';
import 'package:grarr/module/reporter/widgets/primary_btn.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';

class Add_Credit_Card extends StatefulWidget {
  const Add_Credit_Card({super.key});

  @override
  State<Add_Credit_Card> createState() => _Add_Credit_CardState();
}

class _Add_Credit_CardState extends State<Add_Credit_Card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant_Colors.primarycolor,
      appBar: AppBar(
        backgroundColor: Constant_Colors.primarycolor,
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            height: 0.05.sh,
            width: 0.05.sw,
            decoration: BoxDecoration(
              color: Constant_Colors.superwhite,
              borderRadius: BorderRadius.circular(10.sp),
            ),
            child: InkWell(
              onTap:(){Navigator.pop(context);},
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
              ),
            ),
          ),
        ),
        title: Text(
          "Add Credit Card",
          style: Constant_Fonts.onboardingtitle,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             All_Text_Field_Widget(),
              SizedBox(
                height: 0.03.sh,
              ),
              Primary_Btn(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Credit_Cards()));
                },
                title: Text(
                  "Add Credit Card",
                  style: Constant_Fonts.onboardingwhiteh2,
                ),
                color: Constant_Colors.secondarycolor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}




class All_Text_Field_Widget extends StatelessWidget {
  const All_Text_Field_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(
        "Cardholder Name",
        style: Constant_Fonts.blacktextfont2,
      ),
      SizedBox(
        height: 0.002.sh,
      ),
      Container(
        height: 0.07.sh,
        child: textField(
          hintText: "Enter cardholder name here",
          fillcolor: Constant_Colors.superwhite,
        ),
      ),
      SizedBox(
        height: 0.02.sh,
      ),
      Text(
        "Card Number",
        style: Constant_Fonts.blacktextfont2,
      ),
      SizedBox(
        height: 0.002.sh,
      ),
      Container(
        height: 0.07.sh,
        child: textField(
          hintText: "xxxx-xxxx-xxxx",
          fillcolor: Constant_Colors.superwhite,
        ),
      ),
      SizedBox(
        height: 0.02.sh,
      ),
      Text(
        "ID Number",
        style: Constant_Fonts.blacktextfont2,
      ),
      SizedBox(
        height: 0.002.sh,
      ),
      Container(
        height: 0.07.sh,
        child: textField(
          hintText: "xxxx-xxxx-xxxx",
          fillcolor: Constant_Colors.superwhite,
        ),
      ),
      SizedBox(
        height: 0.02.sh,
      ),
      Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Expiration Date",
                  style: Constant_Fonts.blacktextfont2,
                ),
                SizedBox(
                  height: 0.002.sh,
                ),
                Container(
                  height: 0.07.sh,
                  child: textField(
                    hintText: "MM-YYYY",
                    fillcolor: Constant_Colors.superwhite,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 0.04.sw,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CVV",
                  style: Constant_Fonts.blacktextfont2,
                ),
                SizedBox(
                  height: 0.002.sh,
                ),
                Container(
                  height: 0.07.sh,
                  child: textField(
                    hintText: "xxx",
                    fillcolor: Constant_Colors.superwhite,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ],);
  }
}
