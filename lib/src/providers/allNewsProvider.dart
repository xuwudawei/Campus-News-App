import 'package:flutter/material.dart';
import 'package:python_project/src/models/news_model.dart';

class NewsInfoProvider extends ChangeNotifier {
  List<NewsModel> s = [];

  List<NewsModel> get getNewsList => s;
  void setNewsList(List a) {
    s = a;
    notifyListeners();
  }
}
