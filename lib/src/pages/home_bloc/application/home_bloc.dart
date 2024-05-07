import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:newsapi_getx/src/models/article_model.dart';
import 'package:http/http.dart' as http;

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeStateInitial()) {
    on<GetNewsEvent>((event, emit) async{
      emit(HomeStateLoading());
      List<Articles> news = [];
      var url = Uri.parse(
          "https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=09a63c9dc1ce42908522bc7c784a8a43");

      var response = await http.get(url);

      var jsonData = jsonDecode(response.body);

      try {
        if (jsonData['status'] == "ok") {
        // jsonData["articles"].forEach((element) {
        //   if (element["urlToImage"] != null && element['description'] != null) {
        //     Articles articleModel = ArticleModel(
        //       title: element['title'],
        //       description: element['description'],
        //       url: element['url'],
        //       urlToImage: element['urlToImage'],
        //     );
        //     news.add(articleModel);
        //   }
        // });
        emit(HomeStateLoaded(news));
      } else {
        emit(HomeStateError());
      }
      } catch(err) {
        emit(HomeStateError());
      }
    });
  }
}
