import 'package:flutter/material.dart';
import 'package:twitter_by_ncl/core/router/router_constant.dart';
// import 'package:twitter_by_ncl/core/router/router_constant.dart';
import 'package:twitter_by_ncl/presentation/base_page/page/base_page.dart';
import 'package:twitter_by_ncl/presentation/home_page/page/home_page.dart';

class Router {
  Route generateRouter(Widget page, RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => getPageRoute(settings),
    );
  }

  Widget getPageRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterConstant.homePage:
        return const HomePage();
      default:
        return const BasePage();
    }
  }

  Route? generateAppRoutes(RouteSettings settings) {
    Widget getRoutedWidget = getPageRoute(settings);
    return generateRouter(getRoutedWidget, settings);
  }
}
