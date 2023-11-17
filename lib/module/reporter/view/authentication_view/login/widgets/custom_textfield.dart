import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class textField extends StatelessWidget {
  textField({

    super.key,
    this.contentPadding,
    this.icon,
    this.hintText,
    this.suffixicon,
    this.suffixiconcolor,
    this.controller,
    required this.obscure,

  });
  bool obscure;
  var contentPadding;
  var icon;
  var hintText;
  var suffixicon;
  var suffixiconcolor;
  var controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
obscureText: obscure,
      controller: controller,

      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(


        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffFF8B05),
          ),
          borderRadius: BorderRadius.circular(8.sp),
        ),
        border: OutlineInputBorder(

          borderRadius: BorderRadius.circular(8.sp),
          borderSide: BorderSide.none,
        ),
        fillColor: Color(0xffE3E8F2),
        prefixIcon: icon,
        suffixIcon: suffixicon,
        suffixIconColor: suffixiconcolor,
        hintText: hintText,

contentPadding: contentPadding,
        hintStyle: TextStyle(
          fontSize:12.sp ,
          color: Color(0xff17191E),
        ),
        filled: true,
      ),
    );
  }
}
