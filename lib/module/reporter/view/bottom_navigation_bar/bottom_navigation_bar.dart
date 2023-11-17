import 'package:flutter/material.dart';

import 'package:grarr/module/reporter/view/add_credit_card/add_credit_card.dart';
import 'package:grarr/module/reporter/view/chats/chats.dart';
import 'package:grarr/module/reporter/view/create_report/create_report.dart';
import 'package:grarr/module/reporter/view/map_view/map_view.dart';
import 'package:grarr/module/reporter/view/my_wallet/my_wallet.dart';
import 'package:grarr/module/reporter/view/repair_history/repair_history.dart';
import 'package:grarr/module/reporter/view/setting_Screen/setting_Screen.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_images.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  Color _selectedColor = Constant_Colors.secondarycolor;
  Color _unselectedColor = Colors.grey;
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Map_View(),
    Repair_History(),
    My_Wallet(),
    Chats(),
    Setting_Screen(),
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
