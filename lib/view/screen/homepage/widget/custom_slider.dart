import 'package:film_app/core/constant/app_colors.dart';
import 'package:film_app/data/model/film_model.dart';
import 'package:film_app/view/screen/homepage/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSlider extends StatelessWidget {
  final FilmModel film;
  const CustomSlider({super.key, required this.film});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: film.categoryName,
          fontSize: 18.sp,
          isVisible: true,
          textAlign: TextAlign.center,
          color: AppColors.white,
        ),
        SizedBox(
          height: 10.h,
        ),
        Expanded(
          child: Container(
            width: 180.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(film.imageUrl), fit: BoxFit.fill),
                color: AppColors.white,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
          ),
        ),
      ],
    );
  }
}
