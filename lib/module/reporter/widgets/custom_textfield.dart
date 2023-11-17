import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grarr/utils/constants/constant_colors.dart';

// ignore: must_be_immutable
class textField extends StatelessWidget {
  textField({
    super.key,
    this.icon,
    this.hintText,
    this.suffixicon,
    this.suffixiconcolor,
    this.fillcolor,
  });
  var fillcolor;
  var icon;
  var hintText;
  var suffixicon;
  var suffixiconcolor;

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
contentPadding: EdgeInsets.all(10),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffFF8B05),
          ),
          borderRadius: BorderRadius.circular(8.sp),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.sp),
          borderSide: BorderSide(color: Color(0xffE4E4E4),),
        ),
        fillColor: fillcolor,
        prefixIcon: icon,
        suffixIcon: suffixicon,
        suffixIconColor: suffixiconcolor,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Constant_Colors.texthint,
          fontSize: 12.sp,
        ),
        filled: true,
      ),
    );
  }
}
