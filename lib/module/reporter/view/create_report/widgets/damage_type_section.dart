import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grarr/utils/constants/constant_colors.dart';
import 'package:grarr/utils/constants/constant_fonts.dart';
import 'package:grarr/utils/constants/constant_images.dart';


// Container Damage_Types_Section(BuildContext context) {
//   List<String> titles = [
//     "Collision",
//     "Paint/Scratch",
//     "Ding/Dents",
//     "Windsheild"
//   ];
//
//   List _imagesList = [
//     Constant_Images.collision,
//     Constant_Images.damage,
//     Constant_Images.paint,
//     Constant_Images.windsheild,
//   ];
//   return Container(
//     height: .15.sh,
//     width: MediaQuery.sizeOf(context).width,
//     child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: _imagesList.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: EdgeInsets.only(right: 15.sp),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   height: 0.1.sh,
//                   width: 0.3.sw,
//                   decoration: BoxDecoration(
//                       color: Constant_Colors.account_type_box_color,
//                       borderRadius: BorderRadius.circular(10.sp)),
//                   child: _imagesList[index],
//                 ),
//
//                 SizedBox(
//                   height: 0.02.sh,
//                 ),
//
//                 Text(
//                   titles[index].toString(),
//                   style: Constant_Fonts.lighttitle,
//                 ),
//               ],
//             ),
//           );
//         }),
//   );
// }

class Damage_Section extends StatefulWidget {
  @override
  State<Damage_Section> createState() => _Damage_SectionState();
}

class _Damage_SectionState extends State<Damage_Section> {
  List<String> titles = [
    "Collision",
    "Paint/Scratch",
    "Ding/Dents",
    "Windsheild"
  ];

  List _imagesList = [
    Constant_Images.collision,
    Constant_Images.damage,
    Constant_Images.paint,
    Constant_Images.windsheild,
  ];

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: .15.sh,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _imagesList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 15.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 0.1.sh,
                    width: 0.3.sw,
                    decoration: BoxDecoration(
                        color: Constant_Colors.account_type_box_color,
                        borderRadius: BorderRadius.circular(10.sp)),
                    child: _imagesList[index],
                  ),

                  SizedBox(
                    height: 0.02.sh,
                  ),
                  Text(
                    titles[index].toString(),
                    style: Constant_Fonts.lighttitle,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
