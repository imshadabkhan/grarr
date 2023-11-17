import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:grarr/module/reporter/view/authentication_view/login/widgets/custom_textfield.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';
import 'package:grarr/utils/constants/constant_images.dart';

class Message_View2 extends StatefulWidget {
  const Message_View2({super.key});

  @override
  State<Message_View2> createState() => _Message_View2State();
}

class _Message_View2State extends State<Message_View2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(height: 35.h),
                Row(
                  children: [
                    Container(
                      height:50,
                      width: 50,
                      child: Card(
                        elevation: 0.5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: InkWell(
                            onTap: (){Navigator.pop(context);},
                            child: Constant_Images.arrowbackicon),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          height: 0.07.sh,
                          child: Constant_Images.settingscreenperson1,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 1.0,
                            bottom: 2,
                          ),
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 2.w),
                                  borderRadius: BorderRadius.circular(20)),
                              child: CircleAvatar(
                                radius: 4,
                                backgroundColor: Constant_Colors.online,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text(
                      "John Doe",
                      style: Constant_Fonts.blacktextfont,
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.02.sh
                  ,
                ),
                Text(
                  "Today",
                  style: Constant_Fonts.blacktextfont3,
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding:  EdgeInsets.only(right: 0.08.sw),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff1C2B3E),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet consectetur. At cursus ac tortor dignissim massa eget. Felis enim sem dictumst risus sit. Mi eget purus tellus dolor.",
                            style: Constant_Fonts.whitetextfont2,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.01.sh,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "2:30 PM",
                            style: Constant_Fonts.lighttitle2,
                          ),
                          SizedBox(
                            width: 0.01.sw,
                          ),
                          Constant_Images.seen_message_icon,
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 0.08.sw),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffE3E8F2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet consectetur. At cursus ac tortor dignissim massa eget. Felis enim sem dictumst risus sit. Mi eget purus tellus dolor.",
                            style: Constant_Fonts.blacktextfont2,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.01.sh
                        ,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Constant_Images.seen_message_icon,
                          SizedBox(
                            width: 0.01.sh
                            ,
                          ),
                          Text(
                            "2:30 PM",
                            style: Constant_Fonts.lighttitle2,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: textField(
              
              obscure: false,
              
              hintText: "Write your message...",
              suffixicon: Padding(
                padding: const EdgeInsets.only(top: 3, right: 10, bottom: 3),
                child: Container(
                  height: .02.sh,
                  width: .3.sw,
                  decoration: BoxDecoration(
                    color: Constant_Colors.secondarycolor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                              child: Text(
                                "Send",
                                style: Constant_Fonts.whitetextfont2,
                              )),
                          Constant_Images.send_icon,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
