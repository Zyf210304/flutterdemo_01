import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  List<Widget> _initListData() {
      List<Widget>  list = [];

      for (var i = 0; i < 20; i++) {
        list.add(
           ListTile(
            title: Text("我是一个列表 $i"),
            )
        );
      }
      print(list.length);
      return list;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 125,
      child:  ListView(
      padding: EdgeInsets.fromLTRB(8, 10, 8, 10),
      children:  _initListData()
    ),
    );
  }
}
