import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:newsapi_getx/src/models/article_model.dart';
import 'package:newsapi_getx/src/pages/home_getx/application/home_service.dart';

class HomeRepository {
  static HomeService homeService = HomeService();
  Future<List<Articles>> getHomedata({bool isTestCall = false}) async{
    News news;
    if(isTestCall) {
      Map<String, dynamic> jsonData = jsonDecode(await rootBundle.loadString('assets/news-response.json'));
      news = News.fromJson(jsonData);
      return news.articles!;
    } else {
      Response response = await homeService.getHomeData();
      news = News.fromJson(jsonDecode(response.body));

      return news.articles!;
    }
  }
}