import 'package:film_app/core/constant/app_colors.dart';
import 'package:film_app/view/screen/show_animated_text/controller/show_animated_text_controller.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ShowAnimatedText extends StatelessWidget {
  const ShowAnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ShowAnimatedTextController());
    return Scaffold(
      body: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            ScaleAnimatedText(
              'WELCOME TO OUR WORLD',
              duration: const Duration(seconds: 10),
              textAlign: TextAlign.center,
              textStyle: TextStyle(fontSize: 30.0.sp, color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
