import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:python_project/src/providers/allNewsProvider.dart';
import 'package:python_project/src/widgets/user/homePage/SubPages/allNewsTile.dart';

//List<NewsModel> allNews = new List<NewsModel>();

class AllNews extends StatefulWidget {
  @override
  _AllNewsState createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews> {
  @override
  Widget build(BuildContext context) {
    final news = Provider.of<NewsInfoProvider>(context);
    return Container(
      child: ListView.builder(
        itemCount: news.getNewsList.length,
        itemBuilder: (context, index) {
          return AllNewsTile(
            image: news.getNewsList[index].image,
            title: news.getNewsList[index].title,
            date: news.getNewsList[index].date,
            content: news.getNewsList[index].content,
            url: news.getNewsList[index].url,
          );
        },
      ),
    );
  }
}

// Widget TopNewsCard() {
//   return Card(
//     elevation: 10,
//     child: Column(
//       children: <Widget>[
//         CachedNetworkImage(
//           imageUrl: n[0].image,
//           fit: BoxFit.cover,
//           height: 200,
//         ),
//         Padding(
//           padding: EdgeInsets.only(top: 5),
//         ),
//         Text(
//           allNews[0].title,
//         ),
//       ],
//     ),
//   );
// }
