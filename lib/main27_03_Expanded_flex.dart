import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: HomePage(),
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 700,
      color: Colors.black12,
      child: Row(
        children: [
          Expanded(
            child: IconContainer(Icons.home),  //这个元素设置宽度是没有效果的
            flex: 2,
          ),
          Expanded(
            child: IconContainer(Icons.person, color: Colors.yellow),
            flex: 1,
          ),
          Expanded(
            child: IconContainer(Icons.collections, color: Colors.blue),
            flex: 1,
          ),
          IconContainer(Icons.collections, color: Colors.green)  //右侧设置固定宽高 左侧自适应
        ],
      ),
    );
  }
}

//自定义  IconContainer
// ignore: must_be_immutable
class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;

  IconContainer(this.icon, {super.key, this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: color,
      width: 50,
      height: 50,
      child: Icon(icon, color: Colors.white, size: 28),
    );
  }
}
