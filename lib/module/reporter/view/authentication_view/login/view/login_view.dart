import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:grarr/module/reporter/view/authentication_view/login/widgets/custom_textfield.dart';
import 'package:grarr/module/reporter/view/authentication_view/signup/signup.dart';
import 'package:grarr/module/reporter/view/choose_account/choose_account.dart';
import 'package:grarr/module/reporter/widgets/app_logo_widget.dart';
import 'package:grarr/module/reporter/widgets/primary_btn.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';





class Login_View extends StatefulWidget {
  const Login_View({super.key});


  @override
  State<Login_View> createState() => _Login_ViewState();
}

class _Login_ViewState extends State<Login_View> {
  bool _obscureText=true;
  bool isvalue=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Constant_Colors.primarycolor,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 0.07.sh),
              Logo(),
              SizedBox(height: 0.07.sh),
              AutoSizeText(
                "Login",
                style: Constant_Fonts.onboardingtitle,
              ),
              AutoSizeText("please enter your email and password to login",
                  style: Constant_Fonts.lighttitle),
              SizedBox(height: 0.03.sh),
              Form(

                child: textField(
                  obscure: false,
                  icon: Icon(Icons.email_outlined),
                  hintText: "Enter your email",
                ),
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              Form(
                child: textField(
                 obscure: _obscureText,
                  icon: Icon(Icons.lock),
                  hintText: "Enter your password",
                  suffixicon: GestureDetector(
                      onTap: (){
                        setState(() {
                          _obscureText=!_obscureText;
                        });

                      },
                      child: Icon(_obscureText?Icons.remove_red_eye_outlined:Icons.visibility_off,color: Constant_Colors.secondarycolor,)),

                ),
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                Container(child: Row(children: [
                  Checkbox(value: isvalue, onChanged: (value){

                    setState(() {
                      isvalue=value!;
                    });

                  }),

                  AutoSizeText("Remember Me",style: TextStyle(color: Colors.black,),)
                ],),),

                  AutoSizeText("Forgot Password?",style: TextStyle(color: Color(0xffFF8B05),),),

              ],),
              SizedBox(
                height: 0.02.sh,
              ),
              Primary_Btn(onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (Context)=>Select_Account(),),);
              },color:Constant_Colors.secondarycolor,title: AutoSizeText("Login",style: Constant_Fonts.btnfont,),),
              SizedBox(
                height: 0.02.sh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(height: 2,width:130,color:Constant_Colors.dividercolor,),AutoSizeText("or",style: TextStyle(color: Colors.black),),Container(height: 2,width:130,color: Constant_Colors.dividercolor,),
              ],),
              SizedBox(
                height: 0.02.sh,
              ),

               Primary_Btn(color:Colors.white,
                 title:  Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [

                   Image(image: AssetImage("assets/images/icons/google_icon.png")),
                   SizedBox(width: 20.w,),
                   AutoSizeText("Continue with Google",style: Constant_Fonts.blacktextfont,),
                 ],
               ),),
              SizedBox(height: 0.02.sh,),

              Primary_Btn(
                color: Colors.white,
                title:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage("assets/images/icons/facebook.png")),
                  SizedBox(width: 15.w,),
                  AutoSizeText("Continue with Facebook",style: Constant_Fonts.blacktextfont,),
                ],
              ),),
              Container(height: 30.h),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText("Don't have an account yet?",style: TextStyle(color: Colors.black,)),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup_View(),),);
                  }, child: Column(
                    children: [
                      AutoSizeText("Sign up",style: TextStyle(
                        color: Constant_Colors.secondarycolor,


                      ),),
                      Container(height: 1.h,),
                      Container(width: 0.16.sw,height: 2,color: Colors.orange,),

                    ],
                  )),
                ],),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


