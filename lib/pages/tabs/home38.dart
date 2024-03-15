import 'package:flutter/material.dart';
import 'package:flutterdemo_01/pages/search.dart';
import 'package:flutterdemo_01/pages/form.dart';
import '../news.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ 
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const SearchPage())
            );
          }, child:const Text("搜索")),
          const SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const FormPage())
            );
          }, child:const Text("表单")),
          const SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const NewsPage(title: "新闻信息", aid: 100,))
            );
          }, child:const Text("新闻")),
        ],
      ),
    );
  }
}