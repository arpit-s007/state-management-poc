import 'dart:convert';

import 'package:get/get.dart';
import 'package:newsapi_getx/src/models/article_model.dart';
import 'package:http/http.dart' as http;
import 'package:newsapi_getx/src/models/category_model.dart';
import 'package:newsapi_getx/src/pages/home_getx/application/category_data.dart';
import 'package:newsapi_getx/src/pages/home_getx/application/home_repository.dart';

class HomeController extends GetxController {
  RxList<Articles> newsItems = <Articles>[].obs;
  List<CategoryModel> categories = <CategoryModel>[].obs;

  RxBool isLoading = true.obs;

  HomeRepository homeRepository = HomeRepository();

  @override
  void onInit() {
    super.onInit();
    getNews();

    categories = getCategories();
  }


    

  Future<void> getNews() async {
    List<Articles> news = await homeRepository.getHomedata();
    
    newsItems.addAll(news);

    print(newsItems);
    isLoading.value = false;
  }

}