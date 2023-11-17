import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grarr/module/reporter/view/authentication_view/login/view/login_view.dart';
import 'package:grarr/module/reporter/view/onboarding_view/widget/onboarding_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';
import '../../widgets/app_logo_widget.dart';
import '../../widgets/primary_btn.dart';

class Onboarding_View extends StatefulWidget {
  @override
  State<Onboarding_View> createState() => _Onboarding_ViewState();
}

class _Onboarding_ViewState extends State<Onboarding_View> {
  double _currentPage = 0;
  PageController _pageController = PageController();
  List _onboardingimages = [
    "assets/images/onboarding_images/onboarding.png",
    "assets/images/onboarding_images/onboarding.png",
    "assets/images/onboarding_images/onboarding.png"
  ];
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant_Colors.primarycolor,
      appBar: AppBar(
        toolbarHeight: 0.1.sh,
        title: Center(child: Logo()),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Constant_Colors.primarycolor,
      ),
      body: Padding(
        padding: EdgeInsets.only(left:20,right: 20,bottom: 10
            ),
        child: Column(
          children: [
            Expanded(
              child: PageView(

                controller: _pageController,
                children: [
                  OnboardingScreen(
                    "Welcome to Gararr!",
                    'Lorem ipsum dolor sit amet consectetur. Tempus nec pellentesque id cras vivamus amet libero vel. Pellentesque nullam quam iaculis erat tellus lectus nunc. Malesuada habitasse ligula vulputate enim mattis id adipiscing ut amet.',
                  ),
                  OnboardingScreen(
                    "Welcome to Gararr2",
                    'Lorem ipsum dolor sit amet consectetur. Tempus nec pellentesque id cras vivamus amet libero vel. Pellentesque nullam quam iaculis erat tellus lectus nunc. Malesuada habitasse ligula vulputate enim mattis id adipiscing ut amet.',
                  ),
                  OnboardingScreen(
                    "Welcome to Gararr3",
                    'Lorem ipsum dolor sit amet consectetur. Tempus nec pellentesque id cras vivamus amet libero vel. Pellentesque nullam quam iaculis erat tellus lectus nunc.Malesuada habitasse ligula vulputate enim mattis id adipiscing ut amet.',
                  ),
                ],
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index.toDouble();
                  });
                },
              ),
            ),

            DotsIndicator(
              dotsCount: 3,
              position: _currentPage,
              decorator: DotsDecorator(
                color: Colors.grey.withOpacity(0.5), // Inactive color
                activeColor: Constant_Colors.secondarycolor,
              ),
            ),
            SizedBox(
              height: 0.12.sh,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Primary_Btn(
                color: Constant_Colors.secondarycolor,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login_View()));
                },
                title: AutoSizeText("Get Started",maxLines: 1,style: Constant_Fonts.onboardingwhiteh2,),
              ),
            ),
            SizedBox(
              height: 0.02.sh,
            ),

          ],
        ),
      ),
    );
  }
}

