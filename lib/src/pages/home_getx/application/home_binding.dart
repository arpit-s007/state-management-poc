import 'package:get/get.dart';
import 'package:newsapi_getx/src/pages/home_getx/application/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(),);
  }
}