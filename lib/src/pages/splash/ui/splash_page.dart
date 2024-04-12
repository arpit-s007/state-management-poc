import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapi_getx/src/config/styles.dart';
import 'package:newsapi_getx/src/pages/splash/application/splash_controller.dart';

class SplashScreenPage extends StatelessWidget {
  SplashController controller =
      Get.put(SplashController());
  SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Splash Logo",
              style: globalStyle.text.h3,
            ),
          ],
        ),
      ),
    );
  }
}