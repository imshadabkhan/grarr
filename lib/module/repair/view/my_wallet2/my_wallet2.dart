import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';
import 'package:grarr/utils/constants/constant_images.dart';

class My_Wallet2 extends StatefulWidget {
  const My_Wallet2({super.key});

  @override
  State<My_Wallet2> createState() => _My_Wallet2State();
}

class _My_Wallet2State extends State<My_Wallet2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant_Colors.primarycolor,
      appBar: AppBar(
        backgroundColor: Constant_Colors.primarycolor,
        elevation: 0,
        centerTitle: true,
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
              onTap: (){Navigator.pop(context);},

              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
              ),
            ),
          ),
        ),
        title: Text(
          "My Wallet",
          style: Constant_Fonts.onboardingtitle,
        ),
      ),
      body: SingleChildScrollView(

        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0 ,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: .15.sh,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.sp),
                        gradient: LinearGradient(colors: [
                          Color(0xffFF7C12).withOpacity(.3),
                          Color(0xffFF7C12).withOpacity(.5),
                          Color(0xffFF7C12).withOpacity(.7),
                        ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Remaining Balance",style: Constant_Fonts.onboardingwhiteh2,),
                        SizedBox(height: 8,),
                        Text("\$ 6000",style: Constant_Fonts.onboardingwhiteh2,)],
                    ),
                  ),
                  Positioned(
                      left: 5,
                      child: Image(
                        image: AssetImage("assets/images/dollars.png"),
                        height: 0.16.sh,
                        width: 65,
                      )),
                  Positioned(
                      right: 5,
                      child: Image(
                        image: AssetImage("assets/images/dollars.png"),
                        height: 0.16.sh,
                        width: 65,
                      )),
                ],
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 0.001.sh,
                  color: Constant_Colors.dividercolor),
              SizedBox(
                height: 0.02.sh,
              ),
              Text(
                "Transaction History",
                style: Constant_Fonts.onboardingh2,
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              Container(
                height: MediaQuery.sizeOf(context).height,
                child: ListView.builder(

                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Card(
                          child: ExpansionTile(
                        backgroundColor: Colors.white,
                        title:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Row(children: [ Constant_Images.arrowup,
                              SizedBox(width: 0.01.sw,),
                              Text("\$2000",style: Constant_Fonts.redColor,),],),
                            Row(children: [  Constant_Images.credit_card,SizedBox(width: 0.01.sw,),Text("\$26800",style: Constant_Fonts.blacktextfont3,),],),
                            Text("Aug 29,2023",style: Constant_Fonts.blacktextfont3,),
                        ],),
                        //     Constant_Images.arrowup,
                        //
                        //
                        // title:
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width,
                              height: 0.001.sh,
                              color: Constant_Colors.dividercolor),
                          SizedBox(
                            height: 0.001.sh,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Description",
                                      style: Constant_Fonts.onboardingh2,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "DamageType: ",
                                      style: Constant_Fonts.lighttitle,
                                    ),
                                    Text(
                                      "Collision",
                                      style: Constant_Fonts.blacktextfont2,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Repaired by:",
                                      style: Constant_Fonts.lighttitle,
                                    ),
                                    Text(
                                      "John Doe",
                                      style: Constant_Fonts.blacktextfont2,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Location: ",
                                      style: Constant_Fonts.lighttitle,
                                    ),
                                    Text(
                                      "8502 Preston Rd.Inglewood",
                                      style: Constant_Fonts.blacktextfont2,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
