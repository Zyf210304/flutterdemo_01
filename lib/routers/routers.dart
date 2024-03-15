import 'package:flutter/material.dart';

import '../pages/tabs39.dart';
import '../pages/news.dart';
import '../pages/form.dart';
import '../pages/search.dart';

//1. 配置路由
Map routes = {
  "/": (context) => const Tabs(),
  "/news": (context) => const NewsPage(aid: 100),
  "/search": (context) => const SearchPage(),
  "/form": (context, {arguments}) => FormPage(
        arguments: arguments,
      ),
};

// 2 配置  onGenerateRoute
var onGenerateRoute = (RouteSettings settings) {
// 统一处理
  print("settings === ${settings}");
  print("settings.name) === ${settings.name}");
  print("settings.arguments === ${settings.arguments}");

  //  "/news"   "/search"
  final String? name = settings.name;
  //  Function  (context) => const SearchPage(),   (context,{arguments}) =>  FormPage(arguments: arguments,),
  final Function? pageContentBuilder = routes[name];

  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};
