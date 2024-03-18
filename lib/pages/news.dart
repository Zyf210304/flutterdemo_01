import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NewsPage extends StatefulWidget {

  final String title;
  final int aid;
  const NewsPage({super.key, this.title = "News", required this.aid});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.aid);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title} "),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pop(context);
      }, child: const Icon(Icons.home),),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Text("新闻"),
            TextButton(onPressed: (){
              Fluttertoast.showToast(msg: "this is a  center Toast", timeInSecForIosWeb: 1, gravity: ToastGravity.CENTER);
            }, child: Text("toast"))
          ],
        ),
      ),
    );
  }
}