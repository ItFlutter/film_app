import 'package:film_app/core/constant/app_routes.dart';
import 'package:get/get.dart';

class ShowAnimatedTextController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 4), () {
      Get.offNamed(AppRoutes.discoveringfilms);
    });
    super.onInit();
  }
}
