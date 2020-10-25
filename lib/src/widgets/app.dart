import 'package:flutter/material.dart';
import 'package:python_project/src/providers/SelectedNews.dart';
import 'package:python_project/src/providers/allNewsProvider.dart';
import 'package:python_project/src/providers/allOpportunitiesProvider.dart';
import 'package:python_project/src/providers/selectedOpportunities.dart';
import 'package:python_project/src/providers/botomNav.dart';
import 'package:python_project/src/providers/userProvider.dart';
import 'package:python_project/src/routes/routes.dart';
import '../routes/routes.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  bool logged = false;
  @override
  Widget build(BuildContext context) {
    //var savedState = SavedState.of(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => BotomNav(),
        ),
        ChangeNotifierProvider(
          create: (_) => SelectedNews(),
        ),
        ChangeNotifierProvider(
          create: (_) => SelectedOpportunities(),
        ),
        ChangeNotifierProvider(
          create: (_) => UserInfoProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => NewsInfoProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => OpportunityInfoProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: logged ? '/login/home' : '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
