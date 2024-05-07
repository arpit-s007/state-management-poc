import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapi_getx/src/config/app_routes.dart';
import 'package:newsapi_getx/src/pages/home_getx/application/home_controller.dart';
import 'package:newsapi_getx/src/utils/common_widgets/common_widgets.dart';

class HomePage extends StatelessWidget {
  final controller = Get.find<HomeController>();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: GestureDetector(
          onTap: () {
            Get.toNamed(AppRoutes.HOME_TWO);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text("Flutter", style: TextStyle(color: Colors.black)),
              Text("News", style: TextStyle(color: Colors.blue))
            ],
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Obx(() {
        return controller.isLoading.value
            ? Center(
                child: Container(
                  child: CircularProgressIndicator(),
                ),
              )
            : SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        child: ListView.builder(
                          itemCount: controller.categories.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return CategoryTile(
                              imageUrl: controller.categories[index].imageUrl,
                              categoryName:
                                  controller.categories[index].categoryName,
                            );
                          },
                        ),
                      ),

                      ///Blogs
                      Container(
                        child: ListView.builder(
                          physics: ScrollPhysics(),
                          itemCount: controller.newsItems.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return BlogTile(
                              imageUrl: controller.newsItems[index].urlToImage ?? '',
                              desc: controller.newsItems[index].description ?? '',
                              title: controller.newsItems[index].title ?? '',
                              url: controller.newsItems[index].url ?? '',
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
      }),
    );
  }
}
