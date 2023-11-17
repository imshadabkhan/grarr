import 'dart:async';

import 'package:flutter/material.dart';

import 'package:grarr/module/reporter/view/onboarding_view/onboarding_view.dart';
import 'package:grarr/utils/constants/constant_colors.dart';

class Splash_View extends StatefulWidget {


  @override
  State<Splash_View> createState() => _Splash_ViewState();
}

class _Splash_ViewState extends State<Splash_View> {
  // ignore: must_call_super
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {

      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => Onboarding_View()),
              (route) => false);

    });

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Constant_Colors.primarycolor,
      body: Center(child: Container(
          height: 200,
          width: 200,
          child: Image(image: AssetImage("assets/images/project_logo/grarr_logo.png"),),),),

    );
  }
}
