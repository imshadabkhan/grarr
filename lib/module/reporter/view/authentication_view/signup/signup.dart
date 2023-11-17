import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grarr/module/reporter/view/authentication_view/login/view/login_view.dart';


import 'package:grarr/module/reporter/view/authentication_view/login/widgets/custom_textfield.dart';
import 'package:grarr/module/reporter/widgets/app_logo_widget.dart';
import 'package:grarr/module/reporter/widgets/primary_btn.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';





class Signup_View extends StatefulWidget {
   Signup_View({super.key});

  @override
  State<Signup_View> createState() => _Signup_ViewState();
}

class _Signup_ViewState extends State<Signup_View> {
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
              SizedBox(height: 0.05.sh),
              Logo(),
              SizedBox(height: 0.05.sh),
              AutoSizeText(
                "Sign Up",
                style: Constant_Fonts.onboardingtitle,
              ),
              AutoSizeText("please fill in the details to create a new account",
                  style: Constant_Fonts.lighttitle),
              SizedBox(height: 0.02.sh),
              Form(

                child: textField(
                  obscure: false,
                  icon: Icon(Icons.person),
                  hintText: "Enter username",
                ),
              ),
              SizedBox(
                height: 0.01.sh,
              ),
              Form(

                child: textField(
                  obscure: false,
                  icon: Icon(Icons.phone),
                  hintText: "Enter your phone number",
                ),
              ),
              SizedBox(
                height: 0.01.sh,
              ),
              Form(
                child: textField(
                  obscure: false,

                  icon: Icon(Icons.email_outlined),
                  hintText: "Enter your email",
                ),
              ),
              SizedBox(
                height: 0.01.sh,
              ),
              Form(

                child: textField(
                  obscure: true,
                  icon: Icon(Icons.lock),
                  hintText: "Enter your pasword",
                  suffixicon: Icon(Icons.remove_red_eye_outlined),
                ),
              ),
              SizedBox(
                height: 0.01.sh,
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




                ],),

              Primary_Btn(color:Constant_Colors.secondarycolor,title: AutoSizeText("Create account",style: Constant_Fonts.btnfont,),),
              SizedBox(
                height: 0.01.sh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(height: 2,width:130,color:Constant_Colors.dividercolor,),Text("or",style: TextStyle(color: Colors.black),),Container(height: 2,width:130,color: Constant_Colors.dividercolor,),
                ],),
              SizedBox(
                height: 0.01.sh,
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
              SizedBox(height: 0.01.sh,),

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                AutoSizeText("Already have an account?",style: TextStyle(color: Colors.black),),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_View(),));

                }, child: Column(
                  children: [
                    AutoSizeText("Login",style: Constant_Fonts.goldenfont,),
                    Container(height:1,),
                    Container(width:0.13.sw,height:2,color: Constant_Colors.secondarycolor,),
                    Container(height:1,),
                  ],
                ),),
              ],),
            ],
          ),
        ),
      ),
    );
  }
}


