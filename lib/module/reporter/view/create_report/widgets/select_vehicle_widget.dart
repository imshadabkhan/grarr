import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';
import 'package:grarr/utils/constants/constant_images.dart';

class Select_Vehicle_Tile extends StatelessWidget {
  const Select_Vehicle_Tile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Constant_Colors.account_type_box_color,borderRadius: BorderRadius.circular(10.sp)),
       
        child: ExpansionTile(
          leading: Constant_Images.blackcar,

          title: Text("Select Vehicle",style: Constant_Fonts.lighttitle,),children: [
          Row(children: [
            Checkbox(value: false, onChanged: (value){
              value=true;
            }),
            Text("Toyota Corolla",style: Constant_Fonts.lighttitle,),

          ],),
          Row(children: [
            Checkbox(value: true, onChanged: (value){
              value=true;
            }),
            Text("Toyota Corolla",style: Constant_Fonts.lighttitle,),

          ],),
        ],));
  }
}