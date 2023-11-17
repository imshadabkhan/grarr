import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:grarr/module/reporter/view/chats/list_tile_widget/list_tile_widget.dart';
import 'package:grarr/module/reporter/view/message_view/message_view.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';
import 'package:grarr/utils/constants/constant_images.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       automaticallyImplyLeading: false,
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
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Message_View()));},
            child: TileWidget(
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
          TileWidget(
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
          TileWidget(
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
