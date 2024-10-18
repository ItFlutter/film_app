import 'dart:async';

import 'package:film_app/core/constant/app_routes.dart';
import 'package:film_app/view/screen/homepage/controller/home_page_controller.dart';
import 'package:film_app/view/screen/homepage/widget/custom_drawer_list_tile.dart';
import 'package:film_app/view/screen/homepage/widget/custom_gradient_button.dart';
import 'package:film_app/view/screen/homepage/widget/custom_gradient_image.dart';
import 'package:film_app/view/screen/homepage/widget/custom_gradient_text.dart';
import 'package:film_app/view/screen/homepage/widget/custom_slider.dart';
import 'package:film_app/view/screen/homepage/widget/custom_text.dart';
import 'package:film_app/core/constant/app_colors.dart';
import 'package:film_app/core/constant/app_image_asset.dart';
import 'package:film_app/view/screen/homepage/widget/custom_user_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageController controller1 = Get.put(HomePageController());
    return Scaffold(
        endDrawer: Drawer(
          backgroundColor: AppColors.secondaryColor,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 50.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomUserInformation(
                    assetName: AppImageAsset.vr,
                    title: 'Webcast',
                    subTitle: 'webcast@gmail.com'),
                Column(
                  children: [
                    ...List.generate(
                      controller1.drawer.length,
                      (index) {
                        return CustomDrawerListTile(
                          text: controller1.drawer[index].text,
                          icon: controller1.drawer[index].icon,
                        );
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(
          leading: Image.asset(AppImageAsset.logo),
        ),
        body: GetBuilder<HomePageController>(
          builder: (controller) {
            return ListView(
              children: [
                CustomGradientText(
                  text: 'FILMS WONDERS',
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w700,
                ),
                CustomText(
                  text: 'Discover New Worlds in Every Film',
                  fontSize: 18.sp,
                  isVisible: true,
                  textAlign: TextAlign.center,
                  color: AppColors.white,
                ),
                CustomGradientImage(
                  backgrountAssetName: AppImageAsset.gradient,
                  assetName: AppImageAsset.girlGif,
                  height: 300.h,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 60.0.w, vertical: 20.h),
                  child: CustomGradientButton(
                    text: 'Let’s start',
                    onTap: () {
                      controller.goToAnimatedTextScreen();
                    },
                  ),
                ),
                CustomGradientText(
                  text: 'YES !! ALL THE TYPE YOU WIIL FOUND IT HERE',
                  fontSize: 18.sp,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CarouselSlider.builder(
                    options: CarouselOptions(
                        height: 240.h,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                        onPageChanged: (index, reason) {}),
                    itemCount: controller.films.length,
                    itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) =>
                        CustomSlider(film: controller.films[itemIndex])),
                SizedBox(
                  height: 10.h,
                ),
                CustomGradientText(
                  text: 'NOW !',
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w700,
                ),
                CustomText(
                  text:
                      'How about taking a tour with me to discover a new world here !!',
                  fontSize: 18.sp,
                  isVisible: true,
                  textAlign: TextAlign.center,
                  color: AppColors.white,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomGradientImage(
                  backgrountAssetName: AppImageAsset.gradient,
                  assetName: AppImageAsset.vr,
                  height: 200.h,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 60.0.w, vertical: 20.h),
                  child: CustomGradientButton(
                    text: 'LET’S GO',
                    onTap: () {
                      controller.goToAnimatedTextScreen();
                    },
                  ),
                ),
              ],
            );
          },
        ));
  }
}
