import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:grarr/module/reporter/view/searching_professionals/searching_professionals.dart';
import 'package:grarr/module/reporter/view/searching_professionals/widgets/professionals_contact_widgets/professionals_contact_widget.dart';
import 'package:grarr/module/reporter/view/searching_professionals/widgets/rating_bar/rating_bar.dart';
import 'package:grarr/module/reporter/widgets/primary_btn.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';
import 'package:grarr/utils/constants/constant_images.dart';
class Request_Accepted_Widget extends StatefulWidget {
  @override
  State<Request_Accepted_Widget> createState() =>
      _Request_Accepted_WidgetState();
}
class _Request_Accepted_WidgetState extends State<Request_Accepted_Widget> {
  double _sliderValue = 0.5;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Constant_Images.person1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      "Jimmy Neesham",
                      style: Constant_Fonts.blacktextfont2,
                    ),
                    SizedBox(
                      width: 0.02.sw,
                    ),
                    Text(
                      "4.8",
                      style: Constant_Fonts.lighttitle,
                    ),
                    SizedBox(
                      width: 0.01.sw,
                    ),
                    Constant_Images.review_star,
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Text(
                  "Cancel",
                  style: Constant_Fonts.redColorBold,
                ),
              ),
            ],
          ),
          subtitle: Row(
            children: [
              Contact_Widgets(
                color: Colors.black,
                icon: Constant_Images.mssg_icons,
              ),
              Contact_Widgets(
                color: Constant_Colors.secondarycolor,
                icon: Constant_Images.phone_icon,
              ),
              Contact_Widgets(
                color: Constant_Colors.online,
                icon: Constant_Images.whatsappicon,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Constant_Images.mechanic_truck_icon,
                  Constant_Images.location_icon,
                ],
              ),
            ),
            SliderTheme(
              child: Slider(
                value: _sliderValue,
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                  });

                },
                min: 0.0,
                max: 1.0,

              ),
              data: SliderTheme.of(context).copyWith(
                  trackHeight: 12,
                  thumbColor: Colors.transparent,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0)),),


            Text(
              "Est.Time (15 min)",
              style: Constant_Fonts.blacktextfont3,
            ),
            TextButton(onPressed: (){
              Navigator.pop(context);
              _showBottomSheetThree(context);
            }, child: Text("Next BottomSheet",style: Constant_Fonts.redColorBold,),),


          ],
        )
      ],
    );
  }
}




Future _showBottomSheetThree(BuildContext context) {
  return showModalBottomSheet(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))),
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(150), topRight: Radius.circular(150)),
        ),
        height: 160,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 0.001.sh),
                  Container(
                    height: MediaQuery.sizeOf(context).height,
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Job_Done_Widget();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}


class Job_Done_Widget extends StatelessWidget {
  const Job_Done_Widget({super.key});

  void _showAlertDialog(BuildContext context) {
    showDialog(


      context: context,
      builder: (BuildContext context) {
        return AlertDialog(

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
          title: Column(
            children: [
              Text('Feedback',style: Constant_Fonts.onboardingh2,),
              Text('How was your experience with jimmy?',style: Constant_Fonts.blacktextfont3,),
            ],

          ),
           content: Rating_Bar_Widget(),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  ElevatedButton(onPressed: (){}, child: Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Text("Cancel",style: Constant_Fonts.whitetxtbtn,),
                  ),style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),),
                  ElevatedButton(onPressed: (){
                    Navigator.pop(context);
                    _showAlertDialog(context);


                  }, child: Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Text("Submit",style: Constant_Fonts.whitetxtbtn,),
                  ),style: ElevatedButton.styleFrom(backgroundColor: Constant_Colors.secondarycolor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),),
                ],),
            ),

          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ListTile(
          leading: Constant_Images.person1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      "Jimmy Neesham",
                      style: Constant_Fonts.blacktextfont2,
                    ),
                    SizedBox(
                      width: 0.02.sw,
                    ),
                    Text(
                      "4.8",
                      style: Constant_Fonts.lighttitle,
                    ),
                    SizedBox(
                      width: 0.01.sw,
                    ),
                    Constant_Images.review_star,
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Text(
                  "Cancel",
                  style: Constant_Fonts.redColorBold,
                ),
              ),
            ],
          ),
          subtitle:

              Row(
                children: [
                  Contact_Widgets(
                    color: Colors.black,
                    icon: Constant_Images.mssg_icons,
                  ),
                  Contact_Widgets(
                    color: Constant_Colors.secondarycolor,
                    icon: Constant_Images.phone_icon,
                  ),
                  Contact_Widgets(
                    color: Constant_Colors.online,
                    icon: Constant_Images.whatsappicon,
                  ),
                ],
              ),


        ),
        SizedBox(height: 0.02.sh,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            ElevatedButton(onPressed: (){}, child: Padding(
              padding:  EdgeInsets.all(8.0),
              child: Text("Not shown",style: Constant_Fonts.whitetxtbtn,),
            ),style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
              _showAlertDialog(context);


            }, child: Padding(
              padding:  EdgeInsets.all(8.0),
              child: Text("Job Done",style: Constant_Fonts.whitetxtbtn,),
            ),style: ElevatedButton.styleFrom(backgroundColor: Constant_Colors.secondarycolor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),),
          ],),
        ),

      ],);
  }
}