import 'package:film_app/core/constant/app_colors.dart';
import 'package:film_app/view/screen/homepage/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawerListTile extends StatelessWidget {
  final IconData? icon;
  final String text;
  const CustomDrawerListTile({super.key, this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: AppColors.white,
      ),
      title: CustomText(
        text: text,
        fontSize: 15.sp,
        color: AppColors.white,
      ),
    );
  }
}
