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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child:  ListView(
      scrollDirection: Axis.horizontal, //水平列表
      padding: EdgeInsets.fromLTRB(8, 10, 8, 10),
      children:  <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
            height: 120,  //水平列表 高度自适应 设置无效
            width: 120, //垂直列表 宽度自适应 设置无效
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Column(
              children: [
                Image.network("https://pic4.zhimg.com/v2-e49748c39ca64ab1c329512b5fc6d111_r.jpg?source=1940ef5c"),
                Text("标签"),
              ],
              ),
          ),
          Container(
            width: 120,
            decoration: BoxDecoration(
              color: Colors.yellow,
              
            ),
          ),

          Container(
            width: 120,
            decoration: BoxDecoration(
              color: Colors.blue,
              
            ),
          ),

          Container(
            width: 120,
            decoration: BoxDecoration(
              color: Colors.purple,
              
            ),
          ),

      ],
    ),
    );
  }
}
