import 'dart:convert';

import 'package:get/get.dart';
import 'package:newsapi_getx/src/models/article_model.dart';
import 'package:http/http.dart' as http;
import 'package:newsapi_getx/src/models/category_model.dart';
import 'package:newsapi_getx/src/pages/home_getx/application/category_data.dart';

class HomeController extends GetxController {
  RxList<ArticleModel> newsItems = <ArticleModel>[].obs;
  List<CategoryModel> categories = <CategoryModel>[].obs;

  RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getNews();

    categories = getCategories();
  }


    

  Future<void> getNews() async {
    List<ArticleModel> news = [];
    var url = Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=09a63c9dc1ce42908522bc7c784a8a43");

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
          );
          news.add(articleModel);
        }
      });
      newsItems.value = [...news];
    }
    print(newsItems);
    isLoading.value = false;
  }

}