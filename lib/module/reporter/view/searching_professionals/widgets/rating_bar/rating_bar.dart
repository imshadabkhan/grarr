import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grarr/utils/constants/constant_colors.dart';


class Rating_Bar_Widget extends StatelessWidget {
  const Rating_Bar_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 0.05.sh,
      itemPadding: EdgeInsets.only(left: 4.w),

      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Constant_Colors.secondarycolor,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
