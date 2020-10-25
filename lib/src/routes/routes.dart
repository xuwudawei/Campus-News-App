import 'package:flutter/material.dart';
import 'package:python_project/src/widgets/user/homePage/SubPages/viewNews.dart';

//SplashScreen
import '../widgets/user/splashScreen/splashScreen.dart';

//Login Screen
import '../widgets/user/login/userLogin.dart';

//signup Screen
import '../widgets/user/signup/signup.dart';

//Main home screen
import '../widgets/user/homePage/main.dart';

//Sub HomePages
import '../widgets/user/homePage/SubPages/home.dart';
import '../widgets/user/homePage/SubPages/category.dart';
import '../widgets/user/homePage/SubPages/settings.dart';
import 'package:python_project/src/widgets/user/homePage/SubPages/allNews.dart';
import 'package:python_project/src/widgets/user/homePage/SubPages/allOpportunities.dart';

//Settings Pages
import '../widgets/user/changeUserInfo/changeUsername.dart';
import '../widgets/user/changeUserInfo/changePassword.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arg = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => UserLogin());
      case '/login/signup':
        return MaterialPageRoute(builder: (_) => SignUp());
      case '/login/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/login/home/allNews':
        return MaterialPageRoute(builder: (_) => AllNews());
      case '/login/home/allOpportunities':
        return MaterialPageRoute(builder: (_) => AllOpportunities());
      case '/login/home/settings/changeUsername':
        return MaterialPageRoute(builder: (_) => ChangeUsername());
      case '/login/home/settings/changePassword':
        return MaterialPageRoute(builder: (_) => ChangePassword());
      case '/login/home/allNews/viewNews':
        return MaterialPageRoute(builder: (_) => ViewNews(data: arg));
    }
  }
}
