import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:grarr/module/reporter/view/searching_professionals/searching_professionals.dart';
import 'package:grarr/module/reporter/view/searching_professionals/widgets/request_accepted_widget/request_accepted_widget.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';
import 'package:grarr/utils/constants/constant_images.dart';

class Professionals_Widget extends StatelessWidget {
  const Professionals_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ListTile(
            trailing: Text(
              "1 km",
              style: Constant_Fonts.lighttitle,
            ),
            leading: Constant_Images.person1,
            title: Text(
              "Jimmy Neesham",
              style: Constant_Fonts.blacktextfont3,
            ),
            subtitle: Row(
              children: [
                Text(
                  "4.8",
                  style: Constant_Fonts.lighttitle,
                ),
                SizedBox(
                  width: 0.01.sw,
                ),
                Constant_Images.review_star,
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  width: 0.4.sw,
                  height: 0.05.sh,
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.withOpacity(0.2),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {},
                      child: Center(
                          child: Text(
                            "Decline",
                            style: Constant_Fonts.redColorBold,
                          )),
                    ),
                  ),
                ),
                Container(
                  width: 0.4.sw,
                  height: 0.05.sh,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Navigator.pop(context);
                      _showBottomSheetTwo(context);
                    },
                    child: Center(
                      child: Text(
                        "Accept",
                        style: Constant_Fonts.whitetxtbtn,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Future _showBottomSheetTwo(BuildContext context) {
  return showModalBottomSheet(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))),
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(150), topRight: Radius.circular(150)),
        ),
        height: 250,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 0.001.sh),
                  Container(
                    height: MediaQuery.sizeOf(context).height,
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Request_Accepted_Widget(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}




