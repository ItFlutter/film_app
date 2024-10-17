import 'package:film_app/Features/homepage/presentation/views/widgets/custom_button.dart';
import 'package:film_app/Features/homepage/presentation/views/widgets/custom_text.dart';
import 'package:film_app/core/constant/app_colors.dart';
import 'package:film_app/core/constant/app_image_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        backgroundColor: AppColors.secondaryColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisSize: MainAxisSize.min,
            children: [
              const CustomText(
                text: 'HOME',
                fontSize: 18,
                color: AppColors.white,
              ),
              SizedBox(
                height: 20.h,
              ),
              const CustomText(
                text: 'ABOUT US',
                fontSize: 18,
                color: AppColors.white,
              ),
              SizedBox(
                height: 20.h,
              ),
              const CustomText(
                text: 'SERVICES',
                fontSize: 18,
                color: AppColors.white,
              ),
              SizedBox(
                height: 20.h,
              ),
              const CustomText(
                text: 'CONTACT',
                fontSize: 18,
                color: AppColors.white,
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        leading: Image.asset(AppImageAsset.logo),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  height: 200.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomText(
                        text: 'FILMS WONDERS',
                        fontSize: 21.sp,
                        color: AppColors.white,
                      ),
                      CustomText(
                        text: '"Discover New Worlds in Every Film"',
                        fontSize: 18.sp,
                        isVisible: true,
                        textAlign: TextAlign.center,
                        color: AppColors.white,
                      ),
                      MaterialButton(
                        child: CustomText(
                          text: "Let’s start",
                        ),
                        onPressed: () {},
                        textColor: AppColors.white,
                        color: AppColors.transparent,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/gradient.png')),
                        // borderRadius: BorderRadius.circular(50),
                        // boxShadow: [
                        //   BoxShadow(
                        //       blurRadius: 10,
                        //       color: AppColors.black,
                        //       offset: Offset(0, 20)),
                        //   // BoxShadow(blurRadius: 10, color: AppColors.endLinear)
                        // ],
                        // gradient: LinearGradient(colors: [
                        //   AppColors.beginLinear.withOpacity(0.1),
                        //   AppColors.endLinear.withOpacity(0.3)
                        // ], begin: Alignment.topLeft, end: Alignment.bottomRight)
                      ),
                      child: Image.asset(
                        AppImageAsset.girlGif,
                        height: 200.h,
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
