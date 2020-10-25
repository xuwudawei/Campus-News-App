import 'package:flutter/material.dart';
import 'package:python_project/src/models/news_model.dart';

class OpportunityInfoProvider extends ChangeNotifier {
  List<NewsModel> s = [];

  List<NewsModel> get getOpportunityList => s;
  void setOpportunityList(List a) {
    s = a;
    notifyListeners();
  }
}
