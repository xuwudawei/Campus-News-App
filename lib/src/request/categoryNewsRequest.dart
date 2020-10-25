import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:python_project/src/models/news_model.dart';

// class GetCatNews {
//   String categoryName;
//   List<NewsModel> b = [];
//   GetCatNews({this.categoryName});
//   Future getCatNews() async {
//     var data = await get(
//       'http://127.0.0.1:5000/news' + categoryName,
//       // headers: {
//       //   HttpHeaders.contentTypeHeader: 'application/json',
//       //   "auth-token": token
//       // },
//     );
//     // print(json.decode(data.body));
//     List dat = json.decode(data.body);
//     dat.forEach((element) {
//       b.add(
//         NewsModel.fromJson(element),
//       );
//     });
//     // print(dat);
//     return b;
//   }
// }

class CategoryNewsClass {
  List<NewsModel> news = [];
  Future<void> getNews(String category) async {
    category = category[0].toUpperCase() + category.substring(1);
    //print(category);
    String url = "/category";
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    //print(jsonData[1]["title"]);
    jsonData.forEach(
      (element) {
        if (element['imageUrl'] != null && element['title'] != null) {
          NewsModel articleModel = NewsModel(
            title: element['title'],
            category: element['category'],
            description: element['description'],
            content: element['content'],
            url: element['url'],
            image: element['imageUrl'],
            date: element['date'],
          );
          news.add(articleModel);
          //print(news.length);
        }
        //return news;
      },
    );
    return news;
  }
}
