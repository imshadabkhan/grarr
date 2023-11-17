import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  final String title;
  final String description;
  OnboardingScreen(this.title, this.description);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            height: 0.1.sw,
          ),
          Image(
              image:
              AssetImage("assets/images/onboarding_images/onboarding.png"),
            height: MediaQuery.sizeOf(context).height*.2,
            width: MediaQuery.sizeOf(context).width,
          ),
          SizedBox(
            height: 0.1.sw,
          ),
          AutoSizeText(
            title,
            style: Constant_Fonts.onboardingtitle,
            maxLines: 1,
          ),
          SizedBox(
            height: 0.01.sw,
          ),
          AutoSizeText(
            description,
            style: Constant_Fonts.lighttitle,
            textAlign: TextAlign.center,
            maxLines: 6,
          ),
        ],
      ),
    );
  }
}