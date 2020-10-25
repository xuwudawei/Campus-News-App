import 'package:flutter/material.dart';
import 'package:python_project/src/models/news_model.dart';

class CatNewsProvider extends ChangeNotifier {
  NewsModel catNews;
  get getCatNews => catNews;
  void setCatNews(NewsModel a) {
    catNews = a;
    notifyListeners();
  }
}
