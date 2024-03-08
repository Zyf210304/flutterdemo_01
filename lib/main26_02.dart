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

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 100,   //横轴子元素 最大长度
      children: const [
         Icon(Icons.abc),
        Icon(Icons.home),
        Icon(Icons.book),
        Icon(Icons.person),
        Icon(Icons.settings),
        Icon(Icons.select_all),
        Icon(Icons.cake),
      ]
       
    );
  }
}
