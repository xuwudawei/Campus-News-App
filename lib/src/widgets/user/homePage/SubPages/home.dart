import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:python_project/src/helper.dart/categoryData.dart';
import 'package:python_project/src/models/category_model.dart';
import 'package:python_project/src/providers/allOpportunitiesProvider.dart';
import 'package:python_project/src/providers/botomNav.dart';
import 'package:python_project/src/providers/userProvider.dart';
import 'package:python_project/src/widgets/user/homePage/SubPages/carousel.dart';
import 'package:python_project/src/widgets/user/homePage/SubPages/categoryTile.dart';
import '../SubPages/allOpportunitiesTile.dart';

var color = Color.fromRGBO(255, 64, 129, 1);
//List<OpportunityModel> allOpportunities = new List<OpportunityModel>();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = new List<CategoryModel>();

  @override
  void initState() {
    super.initState();
    //allOpportunities = getAllOpportunities();
    categories = getCategories();
  }

  Widget build(BuildContext context) {
    BotomNav botom = Provider.of<BotomNav>(context);
    UserInfoProvider user_info = Provider.of<UserInfoProvider>(context);
    final opportunity = Provider.of<OpportunityInfoProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Hello,",
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .copyWith(color: Colors.grey, fontSize: 20),
                    ),
                    Text(
                      user_info
                          .getUserInfo['name'], //username will be inserted here
                      style: Theme.of(context).textTheme.display1.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "We got all you need here!",
                      style: Theme.of(context).textTheme.title.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 23),
                    ),
                    CarouselWithIndicatorDemo(),
                    Text(
                      "Categories",
                      style: Theme.of(context).textTheme.title.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 23),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      child: ListView.builder(
                        itemCount: categories.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CategoryTile(
                            image: categories[index].image,
                            categoryName: categories[index].categoryName,
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      child: GestureDetector(
                        onTap: () {
                          botom.setSave(1);
                        },
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.center,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://www.adelaide.edu.au/ask-adelaide/sites/default/files/styles/ua_image/public/media/images/2020-05/09764_UoA.png?itok=PJTPw4vI",
                                  // width: 200,
                                  // height: 200,
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Container(
                                padding: const EdgeInsets.all(11.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 170,
                                    ),
                                    RaisedButton(
                                      elevation: 60,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25.0)),
                                      onPressed: () {
                                        botom.setSave(1);
                                        //Navigator.of(context).pop();
                                      },
                                      color: color,
                                      child: Text(
                                        'View All News',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Available Opportunities",
                      style: Theme.of(context).textTheme.title.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 23),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      //height: 200,
                      child: ListView.builder(
                        itemCount: opportunity.getOpportunityList.length,
                        //shrinkWrap: true,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return AllOpportunitiesTile(
                            image: opportunity.getOpportunityList[index].image,
                            title: opportunity.getOpportunityList[index].title,
                            date: opportunity.getOpportunityList[index].date,
                            content:
                                opportunity.getOpportunityList[index].content,
                            url: opportunity.getOpportunityList[index].url,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Container(
//               child: ListView.builder(
//                 itemCount: allOpportunities.length,
//                 itemBuilder: (context, index) {
//                   return AllOpportunitiesTile(
//                     image: allOpportunities[index].image,
//                     title: allOpportunities[index].title,
//                     date: allOpportunities[index].date,
//                     content: allOpportunities[index].content,
//                     url: allOpportunities[index].url,
//                   );
//                 },
//               ),
//             ),
