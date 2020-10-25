import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:http/http.dart';
import 'package:python_project/src/models/news_model.dart';

class GetAllOpportunity {
  // String newsTitle;
  // String id;
  List<NewsModel> s = [];
  GetAllOpportunity();
  Future<List<NewsModel>> getAllOpportunity() async {
    var data = await get(
      '/opportunity',
      // headers: {
      //   HttpHeaders.contentTypeHeader: 'application/json',
      //   "auth-token": token
      // },
    );
    // print(json.decode(data.body));
    List dat = json.decode(data.body);
    dat.forEach((element) {
      s.add(
        NewsModel.fromJson(element),
      );
    });
    // print(dat);
    return s;
  }
}
