import 'package:film_app/core/constant/app_colors.dart';
import 'package:film_app/view/screen/homepage/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomRowFilmType extends StatelessWidget {
  final String name1;
  final String name2;
  const CustomRowFilmType(
      {super.key, required this.name1, required this.name2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomText(
          text: name1,
          color: AppColors.white,
        ),
        CustomText(
          text: name2,
          color: AppColors.white,
        ),
      ],
    );
  }
}
