import 'package:get/get.dart';
import 'package:newsapi_getx/src/config/app_routes.dart';
import 'package:newsapi_getx/src/pages/article_view/application/article_view_binding.dart';
import 'package:newsapi_getx/src/pages/article_view/ui/article_view_page.dart';
import 'package:newsapi_getx/src/pages/category_news/application/category_news_binding.dart';
import 'package:newsapi_getx/src/pages/category_news/ui/category_news_page.dart';
import 'package:newsapi_getx/src/pages/home_getx/application/home_binding.dart';
import 'package:newsapi_getx/src/pages/home_getx/ui/home_page.dart';
import 'package:newsapi_getx/src/pages/home_bloc/ui/home_two_page.dart';
import 'package:newsapi_getx/src/pages/login/ui/login_page.dart';
import 'package:newsapi_getx/src/pages/splash/application/splash_binding.dart';
import 'package:newsapi_getx/src/pages/splash/ui/splash_page.dart';

class AppScreens {
  AppScreens._();

  static List<GetPage> pages = [
    GetPage(
      name: AppRoutes.SPLASH_SCREEN,
      page: () => SplashScreenPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME_SCREEN,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.CATEGORIES_SCREEN,
      page: () => CategoryNewsPage(),
      binding: CategoryNewsBinding(),
    ),
    GetPage(
      name: AppRoutes.ARTICLE_VIEW,
      page: () => ArticleViewPage(),
      binding: ArticleViewBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME_TWO,
      page: () => HomeTwo(),
    ),
    GetPage(
      name: AppRoutes.Login_Page,
      page: () => LoginPage(),
    ),
  ];
}
