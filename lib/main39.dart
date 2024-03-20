import 'package:flutter/material.dart';

import './routers/routers.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: "/",
        // routes: {
        //   "/":(context) =>  const Tabs(),
        //   "/news":(context) => const NewsPage(aid: 100),
        //   "/search":(context) => const SearchPage(),
        //   "/form":(context) => const FormPage(),
        // },

        // 2 配置  onGenerateRoute
        onGenerateRoute: onGenerateRoute);
  }
}
