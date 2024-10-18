import 'package:film_app/core/constant/app_colors.dart';
import 'package:film_app/core/constant/const_data.dart';
import 'package:film_app/view/screen/homepage/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGradientText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  const CustomGradientText(
      {super.key, required this.text, this.fontSize, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return ConstData.gradient
            .createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height));
      },
      child: CustomText(
        text: text,
        fontWeight: fontWeight,
        fontSize: fontSize,
        isVisible: true,
        textAlign: TextAlign.center,
        color: AppColors.white,
      ),
    );
  }
}
