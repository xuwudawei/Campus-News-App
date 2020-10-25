import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

bool _tapped = false;

class AllOpportunitiesTile extends StatelessWidget {
  final image, date, title, url, content;
  AllOpportunitiesTile({
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
        _tapped = true;
        _myWebsite(this.url);
        // Navigator.of(context)
        //     .pushNamed('/login/home/allNews/viewNews', arguments: {
        //   "title": title,
        //   "url": url,
        //   "image": image,
        //   "content": content,
        //   "date": date.toString(),
        // });
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
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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

_launchURL(String url_link) async {
  var url = url_link;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_myWebsite(String url_link) {
  if (_tapped == true) {
    _launchURL(url_link);
  }
}
