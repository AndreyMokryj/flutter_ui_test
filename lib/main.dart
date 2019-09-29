import 'package:flutter/material.dart';
import 'package:flutter_ui_test/activities.dart';
import 'package:flutter_ui_test/healthcare.dart';
import 'package:flutter_ui_test/home.dart';
import 'package:flutter_ui_test/protection.dart';
import 'package:flutter_ui_test/shopping.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      initialRoute: '/',
      onGenerateRoute: _getRoute,
    );
  }

  Route _getRoute(RouteSettings settings) {
    Widget page;
    bool fullscreenDialog = false;

    switch (settings.name) {
      case '/shopping':
        page = ShoppingPage();
        break;
      case '/activities':
        page = ActivitiesPage();
        break;
      case '/protection':
        page = ProtectionPage();
        break;
      case '/health-care':
        page = HealthCarePage();
        break;
    }
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => page,
      fullscreenDialog: fullscreenDialog,
    );
  }
}

