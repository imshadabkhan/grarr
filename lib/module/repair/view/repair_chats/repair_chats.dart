import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grarr/module/repair/view/message_view2/message_view2.dart';
import 'package:grarr/module/repair/view/repair_chats/list_tile_widget/list_tile_widget.dart';

import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';
import 'package:grarr/utils/constants/constant_images.dart';

class Repair_Chats extends StatefulWidget {
  const Repair_Chats({super.key});

  @override
  State<Repair_Chats> createState() => _Repair_ChatsState();
}

class _Repair_ChatsState extends State<Repair_Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          "Chats",
          style: Constant_Fonts.onboardingtitle,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 0.02.sh,
          ),
          InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Message_View2()));},
            child: TileWidget2(
              bcolor: Constant_Colors.online,
              image: Constant_Images.settingscreenperson1,
              title: Text(
                "John Doe",
                style: Constant_Fonts.blacktextfont,
              ),
              subtitle: Text(
                "Lorem ipsum dolor sit amet",
                style: Constant_Fonts.blacktextfont3,
              ),
            ),
          ),
          TileWidget2(
            bcolor: Constant_Colors.offline,
            image: Constant_Images.settingscreenperson2,
            title: Text(
              "Michael",
              style: Constant_Fonts.blacktextfont,
            ),
            subtitle: Text(
              "Lorem ipsum dolor sit amet",
              style: Constant_Fonts.blacktextfont3,
            ),
          ),
          TileWidget2(
            bcolor:Constant_Colors.online,
            image: Constant_Images.settingscreenperson3,
            title: Text(
              "Liam Murphy",
              style: Constant_Fonts.blacktextfont,
            ),
            subtitle: Text(
              "Lorem ipsum dolor sit amet",
              style: Constant_Fonts.blacktextfont3,
            ),
          ),
        ],
      ),
    );
  }
}
