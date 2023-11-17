import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:grarr/module/reporter/view/authentication_view/login/widgets/custom_textfield.dart';
import 'package:grarr/module/reporter/view/searching_professionals/searching_professionals.dart';
import 'package:grarr/module/reporter/view/searching_professionals/widgets/professionals_contact_widgets/professionals_contact_widget.dart';
import 'package:grarr/module/reporter/view/searching_professionals/widgets/request_accepted_widget/request_accepted_widget.dart';
import 'package:grarr/module/reporter/view/searching_professionals/widgets/searching_professionals_widget/searching_professionals_widget.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';
import 'package:grarr/utils/constants/constant_images.dart';

class Searching_Professionals extends StatefulWidget {
  const Searching_Professionals({Key? key}) : super(key: key);

  @override
  State<Searching_Professionals> createState() =>
      _Searching_ProfessionalsState();
}

class _Searching_ProfessionalsState extends State<Searching_Professionals> {
  @override
  late GoogleMapController _controller;

  Future _showBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(10))),
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(150), topRight: Radius.circular(150)),
          ),
          height: 450,
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Searching for a professionals",
                          style: Constant_Fonts.blacktextfont2,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Cancel",
                            style: Constant_Fonts.redColorBold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0.001.sh),
                    Container(
                      height: MediaQuery.sizeOf(context).height,
                      child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Professionals_Widget(),
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






  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showBottomSheet(context);
        },
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          GoogleMap(
            myLocationEnabled: true,
            zoomGesturesEnabled: true,
            zoomControlsEnabled: true,
            mapType: MapType.normal,
            initialCameraPosition:
                CameraPosition(target: LatLng(24.633333, 46.716667), zoom: 12),
            onMapCreated: (GoogleMapController controller) {
              _controller = controller;
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 0.05.sh, left: 20, right: 20),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20.sp)),
              height: 0.09.sh,
              child: textField(
                obscure: false,
                hintText: "Search here",
                icon: Constant_Images.location_icon,
                contentPadding: EdgeInsets.all(10.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

