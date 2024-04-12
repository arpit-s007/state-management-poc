import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapi_getx/src/config/app_routes.dart';
import 'package:newsapi_getx/src/config/app_screens.dart';
import 'package:newsapi_getx/src/config/font_sizes.dart';
import 'package:newsapi_getx/src/config/styles.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    globalStyle = AppStyle(screenSize: MediaQuery.of(context).size, orientation: MediaQuery.of(context).orientation);
    return GetMaterialApp(
      initialRoute: AppRoutes.SPLASH_SCREEN,
      getPages: AppScreens.pages,
      defaultTransition: Transition.rightToLeft,
      debugShowCheckedModeBanner: false,
    );
  }
}