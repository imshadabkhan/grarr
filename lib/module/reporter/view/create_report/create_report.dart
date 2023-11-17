import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:grarr/module/reporter/view/create_report/widgets/select_vehicle_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:grarr/module/reporter/view/searching_professionals/searching_professionals.dart';
import 'package:grarr/module/reporter/widgets/primary_btn.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';
import 'package:grarr/utils/constants/constant_images.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Create_Report extends StatefulWidget {
  const Create_Report({super.key});

  @override
  State<Create_Report> createState() => _Create_ReportState();
}

class _Create_ReportState extends State<Create_Report> {

  final ImagePicker picker = ImagePicker();
  bool showspinner = false;
  List<File> _images = [];

  Future<void> pickImage() async {
   final imagePicked =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 80);
    if (imagePicked == null) {
      // User canceled image picking

    } else {
      // Add the picked image to the list
      _images.add(File(imagePicked.path));
      setState(() {});
    }
  }



  List _imagesList = [
    Constant_Images.collision,
    Constant_Images.damage,
    Constant_Images.paint,
    Constant_Images.windsheild,
  ];

  List _colorfulimagesList = [
    Constant_Images.colorfulcollision,
    Constant_Images.colorfuldamage,
    Constant_Images.colorfulpaint,
    Constant_Images.colorfulwindsheild,
  ];

  List<String> titles = [
    "Collision",
    "Paint/Scratch",
    "Ding/Dents",
    "Windsheild"
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant_Colors.primarycolor,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Constant_Colors.primarycolor,
        centerTitle: true,
        title: Text(
          "Create Report",
          style: Constant_Fonts.onboardingtitle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Select Vehicle",
                  style: Constant_Fonts.onboardingh2,
                ),
              ],
            ),
            SizedBox(
              height: 0.01.sh,
            ),
            Select_Vehicle_Tile(),
            SizedBox(
              height: 0.02.sh,
            ),
            Row(
              children: [
                Text(
                  "Damage type",
                  style: Constant_Fonts.onboardingh2,
                ),
              ],
            ),
            SizedBox(
              height: 0.01.sh,
            ),
            Damage_Types_Section(context),
            SizedBox(
              height: 0.02.sh,
            ),
            Row(
              children: [
                Text(
                  "Damage Images",
                  style: Constant_Fonts.onboardingh2,
                ),
              ],
            ),
            SizedBox(
              height: 0.01.sh,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

               _images.isNotEmpty? Container(
                 width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.sp),
                  ),
                  child:Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 4.0),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _images.length,
                        itemBuilder: (context,index){
                      return Padding(
                        padding:  EdgeInsets.all(2.0),
                        child: Row(
                          children: [
                            Container(

                             child:Image.file(_images[index]),),


                          ],
                        ),
                      );

                    }),
                  ),
                ):Container(),
                DottedBorder(
                  color: Colors.black,
                  strokeCap: StrokeCap.round,
                  dashPattern: [15, 12, 2, 3],
                  child: Container(
                    height: 0.09.sh,
                    width: 0.2.sw,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.sp),
                    ),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                           pickImage();
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.add,
                                color: Constant_Colors.secondarycolor,
                              ),
                              Text(
                                "upload",
                                style: Constant_Fonts.goldenfont,
                              ),
                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.05.sh,
            ),
            Primary_Btn(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Searching_Professionals()));
              },
              color: Constant_Colors.secondarycolor,
              title: Text(
                "Submit Report ",
                style: Constant_Fonts.btnfont,
              ),
            ),
          ],
        ),
      ),
    );
  }

  int? _cardindex=0;
  Container Damage_Types_Section(BuildContext context) {
    return Container(
      height: .18.sh,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _imagesList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 15.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  InkWell(
                    onTap: (){
                      setState(() {
                       _cardindex = index;
                      });


                    },
                    child: Container(
                      height: 0.1.sh,
                      width: 0.3.sw,
                      decoration: BoxDecoration(
                          color: Constant_Colors.account_type_box_color,
                          borderRadius: BorderRadius.circular(10.sp),
                      border: Border.all( color:_cardindex==index?Constant_Colors.secondarycolor:Constant_Colors.account_type_box_color,)),
                      child: _cardindex==index?_colorfulimagesList[index]:_imagesList[index],
                    ),
                  ),
                  SizedBox(
                    height: 0.02.sh,
                  ),
                  AutoSizeText(

                    titles[index].toString(),
                    style: Constant_Fonts.lighttitle,
                    maxLines: 1,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
