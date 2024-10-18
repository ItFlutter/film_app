import 'package:film_app/core/constant/app_routes.dart';
import 'package:film_app/view/screen/discovering_films/screen/discovering_films.dart';
import 'package:film_app/view/screen/show_animated_text/screen/show_animated_text.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  //================================ DiscoveringFilms ===========================================
  GetPage(
    name: AppRoutes.discoveringfilms,
    page: () => const DiscoveringFilms(),
  ),
  // // ================================= ShowAnimatedText ================================== //
  GetPage(
      name: AppRoutes.showanimatedtext, page: () => const ShowAnimatedText()),
];
