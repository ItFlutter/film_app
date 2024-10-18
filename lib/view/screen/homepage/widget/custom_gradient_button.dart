import 'package:film_app/core/constant/app_colors.dart';
import 'package:film_app/core/constant/const_data.dart';
import 'package:film_app/view/screen/homepage/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGradientButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const CustomGradientButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            gradient: ConstData.gradient),
        child: CustomText(
          text: text,
          color: AppColors.white,
          fontSize: 19.sp,
        ),
      ),
    );
  }
}
