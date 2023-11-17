import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';
import 'package:grarr/utils/constants/constant_images.dart';

class Credit_Cards2 extends StatefulWidget {
  const Credit_Cards2({super.key});

  @override
  State<Credit_Cards2> createState() => _Credit_Cards2State();
}

class _Credit_Cards2State extends State<Credit_Cards2> {
  int selectedValue = 1;
  bool active = false;
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
          child: Card(
            elevation: 0,
            child: Container(
              height: 0.05.sh,
              width: 0.05.sw,
              decoration: BoxDecoration(
                color: Constant_Colors.superwhite,
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
        ),
        title: Text(
          " Credit Cards",
          style: Constant_Fonts.onboardingtitle,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              elevation: 0,
              color: Colors.white,
              child: Container(
                  height: 0.05.sh,
                  width: 0.1.sw,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                  child: Constant_Images.cardadd),
            ),
          ), // Trailing icon
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20, top: 10),
          child: Column(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height,
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context,index){return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      child: InkWell(
                        onTap: () {
                          active = !active;

                          setState(() {});
                        },
                        child: Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: active
                                      ? Constant_Colors.secondarycolor
                                      : Colors.white)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    value: 1,
                                    groupValue: selectedValue,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedValue = value!;
                                      });
                                    },
                                    activeColor:
                                    Colors.orange, // Set the active color to orange
                                  ),
                                  Text(
                                    "1423-4142321-24242",
                                    style: Constant_Fonts.onboardingh2,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 22.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Expiry : ',
                                          style: Constant_Fonts.lighttitle,
                                        ),
                                        Text(
                                          '04-23',
                                          style: Constant_Fonts.lighttitle,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'CVV : ',
                                          style: Constant_Fonts.lighttitle,
                                        ),
                                        Text(
                                          '12344',
                                          style: Constant_Fonts.lighttitle,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),),
                    ),
                  );
                  },

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
