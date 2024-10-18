import 'package:film_app/core/constant/app_colors.dart';
import 'package:film_app/core/constant/app_image_asset.dart';
import 'package:film_app/view/screen/homepage/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomUserInformation extends StatelessWidget {
  final String assetName;
  final String title;
  final String subTitle;
  const CustomUserInformation(
      {super.key,
      required this.assetName,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.only(left: 15.0.w),
        child: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(assetName),
        ),
      ),
      ListTile(
        title: CustomText(
          text: title,
          color: AppColors.white,
        ),
        subtitle: CustomText(
          text: subTitle,
          color: AppColors.grey,
        ),
      ),
      const Divider(
        height: 0.3,
        thickness: 0.5,
      )
    ]);
  }
}
