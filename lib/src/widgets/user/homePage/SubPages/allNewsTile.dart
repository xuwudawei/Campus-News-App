import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AllNewsTile extends StatelessWidget {
  final image, date, title, url, content;
  AllNewsTile({
    this.image,
    this.date,
    this.title,
    this.url,
    this.content,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed('/login/home/allNews/viewNews', arguments: {
          "title": title,
          "url": url,
          "image": image,
          "content": content,
          "date": date.toString(),
        });
      },
      child: Card(
        elevation: 10,
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5),
              child: CachedNetworkImage(
                imageUrl: image,
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
                    title,
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Text(
                    date.toString(),
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
