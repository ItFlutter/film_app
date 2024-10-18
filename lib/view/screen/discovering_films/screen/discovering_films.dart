import 'package:film_app/core/constant/app_colors.dart';
import 'package:film_app/core/constant/app_image_asset.dart';
import 'package:film_app/view/screen/discovering_films/controller/discovering_film_controller.dart';
import 'package:film_app/view/screen/discovering_films/widget/custom_film_types.dart';
import 'package:film_app/view/screen/discovering_films/widget/custom_row_film_types.dart';
import 'package:film_app/view/screen/homepage/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DiscoveringFilms extends StatelessWidget {
  const DiscoveringFilms({super.key});

  @override
  Widget build(BuildContext context) {
    DiscoveringFilmController controller = Get.put(DiscoveringFilmController());
    return Scaffold(
      // backgroundColor: AppColors.beginLinear,
      body: Center(
          child: CarouselSlider.builder(
        options: CarouselOptions(
            height: 240.h,
            enableInfiniteScroll: true,
            autoPlay: true,
            onPageChanged: (index, reason) {}),
        itemCount: 1,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
            Padding(
          padding: EdgeInsets.all(10.w),
          child: Container(
              padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 30.w, vertical: 20.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffD9D9D9).withOpacity(0.1),
                  image: const DecorationImage(
                      image: AssetImage(AppImageAsset.gradient))),
              child: const CustomFilmType()),
        ),
      )),
    );
  }
}
