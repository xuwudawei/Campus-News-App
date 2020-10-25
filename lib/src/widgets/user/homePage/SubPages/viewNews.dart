import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var color = Color.fromRGBO(255, 64, 129, 1);

class ViewNews extends StatelessWidget {
  final Map data;
  ViewNews({Key key, @required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'News Ongoing',
        ),
        centerTitle: true,
        backgroundColor: color,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                data["title"],
                style: GoogleFonts.muli(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  // decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 5,
              ),
              CachedNetworkImage(
                imageUrl: data["image"],
                width: MediaQuery.of(context).size.width,
                height: 300,
              ),
              Text(
                data["content"],
                style: GoogleFonts.nunito(
                  fontSize: 15,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  key: new Key("value"),
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "author",
                      style: GoogleFonts.nunito(color: Colors.grey),
                    ),
                    Text(
                      "Lovely Professional University",
                      style: GoogleFonts.nunito(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      data["date"],
                      style: GoogleFonts.nunito(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
