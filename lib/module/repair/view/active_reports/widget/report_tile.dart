import 'package:flutter/material.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';

class Report_Tile extends StatelessWidget {
  Report_Tile({
    super.key,
    required this.title,
    required this.subtitle,
    this.trailing,
    required this.statuscolor,
  });
  var trailing;
  var title;
  var subtitle;
  var statuscolor;
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.withOpacity(0.3),),
      child: Padding(
        padding:  EdgeInsets.all(8.0),
        child: ListTile(
          trailing: trailing,

          title: Text(title,style: Constant_Fonts.onboardingh2,),subtitle: Row(children: [
          CircleAvatar(backgroundColor: statuscolor,radius: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(subtitle,style: Constant_Fonts.lighttitle,),
          ),
        ],),),
      ),
    );
  }
}