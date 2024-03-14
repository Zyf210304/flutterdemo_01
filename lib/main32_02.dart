
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
      ),
      body: ListView(
        children: _list.map((value){
          // return Text("$value");
          return ListTile( title: Text("$value"),);
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //改变数据 必须加上 setState
          setState(() {
            _list.add("我是一个新增的列表 ${_list.length}");
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
