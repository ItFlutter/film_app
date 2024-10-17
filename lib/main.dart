import 'package:film_app/Features/homepage/presentation/views/home_page_view.dart';
import 'package:film_app/core/constant/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            theme: appTheme,
            debugShowCheckedModeBanner: false,
            home: const HomePageView(),
          );
        });
  }
}
