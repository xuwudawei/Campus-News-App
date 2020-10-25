import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:http/http.dart';
import 'package:python_project/src/models/news_model.dart';

class GetAllNews {
  // String newsTitle;
  // String id;
  List<NewsModel> s = [];
  GetAllNews();
  Future<List<NewsModel>> getAllNews() async {
    var data = await get(
      '/news',
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
