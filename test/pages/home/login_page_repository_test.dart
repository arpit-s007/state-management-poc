import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:newsapi_getx/src/config/validators.dart';
import 'package:newsapi_getx/src/models/article_model.dart';
import 'package:newsapi_getx/src/pages/home_getx/application/home_repository.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
  test('Test to check if news items are not empty', () async{
    // Arrange
    List<Articles> newsItems = [];
    HomeRepository homeRepository = HomeRepository();
    
    //Act 
    newsItems = await homeRepository.getHomedata(isTestCall: true);

    //Assert
    expect(newsItems.isNotEmpty, false);
  });
}