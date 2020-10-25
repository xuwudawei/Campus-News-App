import 'package:flutter/material.dart';
import 'package:python_project/src/models/OpportunityModel.dart';

class SelectedOpportunities extends ChangeNotifier {
  OpportunityModel opportunities;
  get getOpportunities => opportunities;
  void setOpportunities(OpportunityModel p) {
    opportunities = p;
    notifyListeners();
  }
}
