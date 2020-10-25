import 'package:flutter/material.dart';
import 'package:python_project/src/models/news_model.dart';

class SelectedNews extends ChangeNotifier {
  NewsModel news;
  get getNews => news;
  void setNews(NewsModel a) {
    news = a;
    notifyListeners();
  }
}
