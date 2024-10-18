import 'package:film_app/core/constant/app_image_asset.dart';
import 'package:film_app/core/constant/app_routes.dart';
import 'package:film_app/data/model/drawer_model.dart';
import 'package:film_app/data/model/film_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  List<DrawerModel> drawer = [
    DrawerModel(text: 'HOME', icon: Icons.home_outlined),
    DrawerModel(text: 'ABOUT US', icon: Icons.info_outline),
    DrawerModel(text: 'SERVICES', icon: Icons.support_agent_outlined),
    DrawerModel(text: 'CONTACT', icon: Icons.contacts_outlined),
  ];
  List<FilmModel> films = [
    FilmModel(categoryName: "ACTION", imageUrl: AppImageAsset.actionFilmName),
    FilmModel(
        categoryName: "ANIMATED", imageUrl: AppImageAsset.animatedFilmName2),
    FilmModel(
        categoryName: "ADVENTURE", imageUrl: AppImageAsset.adventureFilmNam),
    FilmModel(categoryName: "COMEDY", imageUrl: AppImageAsset.comedyFilmName),
    FilmModel(
        categoryName: "IMAGINARY", imageUrl: AppImageAsset.imaginaryFilmName),
    FilmModel(
        categoryName: "ROMANTIC", imageUrl: AppImageAsset.romanticFilmName),
    FilmModel(
        categoryName: "ANIMATED", imageUrl: AppImageAsset.animatedFilmName1),
    FilmModel(categoryName: "HORROR", imageUrl: AppImageAsset.horrorFilmName1),
    FilmModel(categoryName: "HORROR", imageUrl: AppImageAsset.horrorFilmName2),
  ];
  goToAnimatedTextScreen() {
    Get.toNamed(AppRoutes.showanimatedtext);
  }
}
