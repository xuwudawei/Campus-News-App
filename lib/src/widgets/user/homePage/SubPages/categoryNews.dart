import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:python_project/src/models/news_model.dart';
import 'package:python_project/src/request/categoryNewsRequest.dart';

var color = Color.fromRGBO(255, 64, 129, 1);

class CategoryNews extends StatefulWidget {
  final String category;
  CategoryNews({this.category});
  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List<NewsModel> articles = new List<NewsModel>();
  bool _loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCategoryNews();
  }

  getCategoryNews() async {
    CategoryNewsClass newsClass = CategoryNewsClass();
    await newsClass.getNews(widget.category);
    articles = newsClass.news;
    print(articles);
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    //NewsInfoProvider myNews = Provider.of<NewsInfoProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.category[0].toUpperCase() + widget.category.substring(1),
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        actions: <Widget>[
          Opacity(
            opacity: 0,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.save)),
          ),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: _loading
          ? Center(
              child: Container(
              child: CircularProgressIndicator(),
            ))
          : SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: <Widget>[
                    ///News Blog
                    Container(
                      padding: EdgeInsets.only(top: 16),
                      child: ListView.builder(
                        itemCount: articles.length,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return AllNewsTile(articles[index]);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}

// class AllNewsTile extends StatefulWidget {
// NewsModel n;
// AllNewsTile(this.n);
// @override
// _AllNewsTileState createState() => _AllNewsTileState(n);
// }

// class _BlogTileState extends State<BlogTile> {
// ArticleModel n;
// _BlogTileState(this.n);
// bool liked = false;
// _pressed() {
// setState(() {
// liked = !liked;
// });
// }

class AllNewsTile extends StatefulWidget {
  NewsModel n;
  AllNewsTile(this.n);
  @override
  _AllNewsTileState createState() => _AllNewsTileState(n);
}

class _AllNewsTileState extends State<AllNewsTile> {
  NewsModel n;
  //bool liked = false;
  _AllNewsTileState(this.n);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed('/login/home/allNews/viewNews', arguments: {
          "title": n.title,
          "url": n.url,
          "image": n.image,
          "content": n.content,
          "date": n.date,
        });
      },
      child: Card(
        elevation: 10,
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5),
              child: CachedNetworkImage(
                imageUrl: n.image,
                height: 130,
                width: 135,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 5),
            ),
            Container(
              padding: EdgeInsets.only(top: 5),
              width: 220,
              child: Column(
                children: <Widget>[
                  Text(
                    n.title,
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Text(
                    n.date,
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
