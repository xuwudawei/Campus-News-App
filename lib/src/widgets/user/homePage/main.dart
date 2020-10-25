import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:python_project/src/models/news_model.dart';
import 'package:python_project/src/providers/allNewsProvider.dart';
import 'package:python_project/src/providers/allOpportunitiesProvider.dart';
import 'package:python_project/src/providers/botomNav.dart';
import 'package:python_project/src/request/newsRequest.dart';
import 'package:python_project/src/request/opportunityRequest.dart';
import 'package:python_project/src/widgets/user/homePage/SubPages/allNews.dart';
import 'package:python_project/src/widgets/user/homePage/SubPages/category.dart';
import 'package:python_project/src/widgets/user/homePage/SubPages/home.dart';
import 'package:python_project/src/widgets/user/homePage/SubPages/settings.dart';
import 'package:python_project/src/widgets/user/homePage/SubPages/userDrawer.dart';
import 'package:shared_preferences/shared_preferences.dart';

var color = Color.fromRGBO(255, 64, 129, 1);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchNews();
    fetchOpportunity();
  }

  var selectedNav = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    AllNews(),
    Category(),
    Settings(),
  ];
  void _onItemTapped(int index) {
    BotomNav bot = Provider.of<BotomNav>(context, listen: false);
    bot.setSave(index);
    // setState(() {
    //   selectedNav = index;
    // });
  }

  Future<void> fetchNews() async {
    var newsData = Provider.of<NewsInfoProvider>(context, listen: false);
    List<NewsModel> news = await GetAllNews().getAllNews();
    newsData.setNewsList(news);
    //print(news);
  }

  Future<void> fetchOpportunity() async {
    var opportunityData =
        Provider.of<OpportunityInfoProvider>(context, listen: false);
    List<NewsModel> opportunity = await GetAllOpportunity().getAllOpportunity();
    opportunityData.setOpportunityList(opportunity);
    //print(opportunity);
  }

  @override
  Widget build(BuildContext context) {
    BotomNav botom = Provider.of<BotomNav>(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: color,
          actions: <Widget>[
            PopupMenuButton(
              itemBuilder: (context) => <PopupMenuEntry>[
                PopupMenuItem(
                  key: Key('logout'),
                  value: "logout",
                  child: GestureDetector(
                    child: Text('Logout'),
                    onTap: () async {
                      SharedPreferences pref =
                          await SharedPreferences.getInstance();
                      pref.setBool("logged", false);
                      pref.remove("passwrd");
                      pref.remove("email");
                      print("Logout");
                    },
                  ),
                ),
                PopupMenuItem(
                  key: Key('settings'),
                  value: "settings",
                  child: GestureDetector(
                    child: Text('Settings'),
                    onTap: () {
                      botom.setSave(3);
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
              icon: Icon(Icons.more),
              onSelected: (value) {
                if (value == "settings") {
                  //Navigator.of(context).pushNamed(routeName);
                } else {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/login', (route) => false);
                }
              },
            ),
          ],
          title: Text('Campus News App'),
        ),
      ),
      drawer: Drawer(
        child: UserDrawer(),
      ),
      body: _widgetOptions.elementAt(botom.getDefault()),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: color,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              title: Text("Home"),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text("All News"),
              icon: Icon(Icons.book),
            ),
            BottomNavigationBarItem(
              title: Text("Category"),
              icon: Icon(Icons.category),
            ),
            BottomNavigationBarItem(
              title: Text("Settings"),
              icon: Icon(Icons.settings),
            ),
          ],
          onTap: _onItemTapped,
          currentIndex: botom.getDefault(),
        ),
      ),
    );
  }
}
