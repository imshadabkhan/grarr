import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:grarr/module/reporter/view/authentication_view/login/widgets/custom_textfield.dart';
import 'package:grarr/module/reporter/view/create_report/create_report.dart';
import 'package:grarr/utils/constants/constant_images.dart';

class Map_View_Repair extends StatefulWidget {
  const Map_View_Repair({Key? key}) : super(key: key);

  @override
  State<Map_View_Repair> createState() => _Map_View_RepairState();
}

class _Map_View_RepairState extends State<Map_View_Repair> {
  late GoogleMapController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Create_Report()));

      },child: Constant_Images.ep_menu,),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          GoogleMap(
            myLocationEnabled: true,
            zoomControlsEnabled: false,
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(target: LatLng(24.633333, 46.716667), zoom: 12),
            onMapCreated: (GoogleMapController controller) {
              _controller = controller;
            },
          ),
          Padding(
            padding:  EdgeInsets.only(top: 0.05.sh,left: 20,right: 20),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.sp)),
              height: 0.09.sh,
              child: textField(
                obscure: false,
                hintText: "Search here",
                icon: Constant_Images.location_icon,
                contentPadding: EdgeInsets.all(10.sp),

              ),),
          ),
        ],
      ),
    );
  }
}
