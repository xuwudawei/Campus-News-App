import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:python_project/src/helper.dart/categoryData.dart';
import 'package:python_project/src/models/category_model.dart';
import 'package:python_project/src/providers/SelectedNews.dart';
import 'package:python_project/src/widgets/user/homePage/SubPages/categoryNews.dart';
import 'package:python_project/src/widgets/user/homePage/SubPages/categoryTile.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<CategoryModel> categories = new List<CategoryModel>();
  @override
  void initState() {
    super.initState();
    categories = getCategories();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: categories.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return CategoryTileStandAlone(
                image: categories[index].image,
                categoryName: categories[index].categoryName,
              );
            },
          ),
        ),
      ],
    );
  }
}

class CategoryTileStandAlone extends StatelessWidget {
  final image, categoryName;
  CategoryTileStandAlone({this.image, this.categoryName});
  @override
  Widget build(BuildContext context) {
    SelectedNews catNews = Provider.of<SelectedNews>(context, listen: false);
    return GestureDetector(
      onTap: () {
        //CategoryNews(this.categoryName);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryNews(
              category: categoryName.toLowerCase(),
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: CachedNetworkImage(
                imageUrl: image,
                width: 600,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 600,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.black26,
              ),
              child: Text(
                categoryName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
