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
        // body: HomePage(),
        body: HomePageColumn(),
      ),
    );
  }
}

//row
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 700,
      color: Colors.black12,
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,  //主轴 
      // crossAxisAlignment: CrossAxisAlignment.center,  //次轴 需要在容器内发挥作用
      crossAxisAlignment: CrossAxisAlignment.center,  //次轴 需要在容器内发挥作用
      children: [
        IconContainer(Icons.home),
        IconContainer(Icons.person, color: Colors.yellow),
        IconContainer(Icons.collections, color: Colors.blue),
        // IconContainer(Icons.shop, color: Colors.green),
      ],
    ),
    );
  }
}

class HomePageColumn extends StatelessWidget {
  const HomePageColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 700,
      color: Colors.black12,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,  //主轴 
      // crossAxisAlignment: CrossAxisAlignment.center,  //次轴 需要在容器内发挥作用
      crossAxisAlignment: CrossAxisAlignment.center,  //次轴 需要在容器内发挥作用
      children: [
        IconContainer(Icons.home),
        IconContainer(Icons.person, color: Colors.yellow),
        IconContainer(Icons.collections, color: Colors.blue),
        // IconContainer(Icons.shop, color: Colors.green),
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
      width: 100,
      height: 100,
      child: Icon(icon, color: Colors.white, size: 28),
    );
  }
  
}
