import 'package:film_app/core/constant/app_image_asset.dart';
import 'package:film_app/data/model/film_model.dart';
import 'package:get/get.dart';

class DiscoveringFilmController extends GetxController {
  List films = [
    {
      'name1': 'ADVENTURE',
      'name2': 'ROMANTIC',
    },
    {
      'name1': 'ANIMATED',
      'name2': 'ACTION',
    },
    {
      'name1': 'COMEDY',
      'name2': 'HORROR',
    }
  ];
}
