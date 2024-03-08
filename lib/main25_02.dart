import 'package:flutter/material.dart';
import './res/listData.dart';

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
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key}) {
    print(listData);
  }

  List<Widget> _initListData2() {
    List<Widget> tempList = [];
    for (var i = 0; i < listData.length; i++) {
      if (i % 3 != 0) {
        tempList.add(ListTile(
          title: Text("${listData[i]["title"]}, ---$i"),
          subtitle: Text("${listData[i]["autor"]}, ---$i"),
          leading: Image.network("${listData[i]["imageUrl"]}"),
        ));
      } else {
        tempList.add(ListTile(
          title: Text("${listData[i]["title"]}, ---$i"),
          subtitle: Text("${listData[i]["autor"]}, ---$i"),
          trailing: Image.network("${listData[i]["imageUrl"]}"),
        ));
      }
    }
    print(tempList.length);
    return tempList;
  }

  List<Widget> _initListData() {
    List<Widget> list = [];

    for (var i = 0; i < 20; i++) {
      list.add(ListTile(
        title: Text("我是一个列表 $i"),
      ));
    }
    print(list.length);
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 125,
      child: ListView(
          padding: EdgeInsets.fromLTRB(8, 10, 8, 10),
          children: _initListData2()),
    );
  }
}
