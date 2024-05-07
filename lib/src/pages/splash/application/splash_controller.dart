import 'package:get/get.dart';
import 'package:newsapi_getx/src/config/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 2), () => Get.toNamed(AppRoutes.Login_Page));
  }
}