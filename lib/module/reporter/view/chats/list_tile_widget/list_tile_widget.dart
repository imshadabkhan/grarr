import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';


class TileWidget extends StatelessWidget {
  TileWidget({
    super.key,
    this.image,
    this.title,
    this.subtitle,
    this.bcolor,

  });

  var image;
  var title;
  var subtitle;
  var bcolor;
  @override
  Widget build(BuildContext context) {
    return ListTile(

      shape: RoundedRectangleBorder(
        side: BorderSide(
            color: Colors.grey, style: BorderStyle.solid, width: 0.2.w),),
      leading: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(child: image,),
          Padding(
            padding:  EdgeInsets.only(right: 1.0,bottom: 2,
            ),
            child: Container(decoration:BoxDecoration(border: Border.all(color: Colors.black,width: 2.w),borderRadius: BorderRadius.circular(20)),child: CircleAvatar(radius: 4,backgroundColor: bcolor,)),
          ),
        ],
      ),
      title: title,
      subtitle: subtitle,
      trailing: Text(
        "Time here",
        style: Constant_Fonts.lighttitle,
      ),
    );
  }
}