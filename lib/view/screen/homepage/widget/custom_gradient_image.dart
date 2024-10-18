import 'package:film_app/core/constant/app_image_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGradientImage extends StatelessWidget {
  final String backgrountAssetName;
  final String assetName;
  final double? height;
  const CustomGradientImage(
      {super.key,
      required this.backgrountAssetName,
      required this.assetName,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(backgrountAssetName)),
        ),
        child: Image.asset(
          assetName,
          height: height,
          fit: BoxFit.fitHeight,
        ));
  }
}
