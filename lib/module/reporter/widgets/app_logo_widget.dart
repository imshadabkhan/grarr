import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';



class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image:
          AssetImage("assets/images/project_logo/grarr_logo.png"),
          height: 50,
          width: 50,
        ),
        SizedBox(
          width: 0.03.sw,
        ),
        Text(
          "Grarr",
          style: Constant_Fonts.logo,
        ),
      ],
    );
  }
}