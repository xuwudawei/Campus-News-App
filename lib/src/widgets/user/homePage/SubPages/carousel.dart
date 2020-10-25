import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://raw.githubusercontent.com/xuwudawei/Event---All-Newspapers/master/appPic.png',
  'https://happenings.lpu.in/wp-content/uploads/2020/09/MIS-Workshop-will-discuss-.jpg',
  'https://happenings.lpu.in/wp-content/uploads/2020/09/induction-coordinator.jpg',
  'https://happenings.lpu.in/wp-content/uploads/2020/09/Banner-218x150.jpg',
  'https://happenings.lpu.in/wp-content/uploads/2020/09/Pharmacy-638x385.jpeg',
];
final List<String> nameList = [
  "Campus News and more at one stop",
  'It\'s all about finding your passion',
  'Exploring new fields in LPU',
  'Why you should choose B.Tech CSE (Hons.) at LPU',
  'Studying the Novel Profession of Pharmacy at LPU',
];

final List<Widget> imageSliders = imgList
    .map(
      (item) => Container(
        child: Container(
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                CachedNetworkImage(
                  imageUrl: item,
                  fit: BoxFit.cover,
                  width: 1000.0,
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      nameList[imgList.indexOf(item)],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    )
    .toList();

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  _CarouselWithIndicatorDemoState createState() =>
      _CarouselWithIndicatorDemoState();
}

class _CarouselWithIndicatorDemoState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.map((url) {
            int index = imgList.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? Color.fromRGBO(0, 0, 0, 0.9)
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
