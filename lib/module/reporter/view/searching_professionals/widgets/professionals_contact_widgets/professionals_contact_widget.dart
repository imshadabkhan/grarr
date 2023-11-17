import 'package:flutter/material.dart';

class Contact_Widgets extends StatelessWidget {
  Contact_Widgets({
    super.key,
    this.icon,
    this.color,
  });
  var icon;
  var color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0),
      child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
          child: icon),
    );
  }
}