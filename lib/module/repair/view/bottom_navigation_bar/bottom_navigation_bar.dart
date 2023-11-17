import 'package:flutter/material.dart';
import 'package:grarr/module/repair/view/add_credit_card2/add_credit_card2.dart';

import 'package:grarr/module/repair/view/map_view_repair/map_view_repair.dart';
import 'package:grarr/module/repair/view/repair_history2/repair_history2.dart';
import 'package:grarr/module/repair/view/repair_setting_screen/repair_setting_screen.dart';

import 'package:grarr/module/reporter/view/add_credit_card/add_credit_card.dart';
import 'package:grarr/module/reporter/view/chats/chats.dart';
import 'package:grarr/module/reporter/view/create_report/create_report.dart';
import 'package:grarr/module/reporter/view/map_view/map_view.dart';
import 'package:grarr/module/reporter/view/my_wallet/my_wallet.dart';

import 'package:grarr/module/reporter/view/setting_Screen/setting_Screen.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_images.dart';

class BottomNavScreen_RepairScreen extends StatefulWidget {
  @override
  _BottomNavScreen_RepairScreenState createState() => _BottomNavScreen_RepairScreenState();
}

class _BottomNavScreen_RepairScreenState extends State<BottomNavScreen_RepairScreen> {
  Color _selectedColor = Constant_Colors.secondarycolor;
  Color _unselectedColor = Colors.grey;
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Map_View_Repair(),
    Repair_History2(),
    My_Wallet(),
    Chats(),
    Repair_Setting_Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontSize: 1),
        unselectedFontSize:1,
        type: BottomNavigationBarType.fixed,
       backgroundColor: Constant_Colors.navbar_background,
        selectedItemColor:_selectedColor,
        unselectedItemColor: _unselectedColor,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding:  EdgeInsets.symmetric(vertical: 8.0),
              child: ImageFiltered(imageFilter:ColorFilter.mode(_currentIndex==0?_selectedColor:_unselectedColor, BlendMode.srcIn,),child: Constant_Images.home),
            ),
           label: '',
          ),

          BottomNavigationBarItem(
            icon: Padding(
              padding:  EdgeInsets.symmetric(vertical: 8.0),
              child: ImageFiltered(imageFilter:ColorFilter.mode(_currentIndex==1?_selectedColor:_unselectedColor,BlendMode.srcIn),child: Constant_Images.setting_icon_navbar),
            ),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Padding(
              padding:  EdgeInsets.symmetric(vertical: 8.0),
              child: ImageFiltered(imageFilter:ColorFilter.mode(_currentIndex==2?_selectedColor:_unselectedColor,BlendMode.srcIn),child: Constant_Images.wallet),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding:  EdgeInsets.symmetric(vertical: 8.0),
              child: ImageFiltered(imageFilter:ColorFilter.mode(_currentIndex==3?_selectedColor:_unselectedColor,BlendMode.srcIn),child: Constant_Images.chat_icon),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding:  EdgeInsets.symmetric(vertical: 8.0),
              child: ImageFiltered(imageFilter:ColorFilter.mode(_currentIndex==4?_selectedColor:_unselectedColor,BlendMode.srcIn),child: Constant_Images.setting_icon_navbar2),
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
