import 'package:film_app/core/constant/app_colors.dart';
import 'package:film_app/view/screen/discovering_films/controller/discovering_film_controller.dart';
import 'package:film_app/view/screen/discovering_films/widget/custom_row_film_types.dart';
import 'package:film_app/view/screen/homepage/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFilmType extends GetView<DiscoveringFilmController> {
  const CustomFilmType({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomText(
          text: 'PLEASE CHOOSE THE TYPE OF MOVIE YOU WILL ENTER INTO',
          textAlign: TextAlign.center,
          isVisible: true,
          fontSize: 13.sp,
          color: AppColors.white,
        ),
        SizedBox(
          height: 10.h,
        ),
        ...List.generate(
          controller.films.length,
          (index) {
            return CustomRowFilmType(
                name1: controller.films[index]['name1'],
                name2: controller.films[index]['name2']);
          },
        ),
      ],
    );
  }
}
