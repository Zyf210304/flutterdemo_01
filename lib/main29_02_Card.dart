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

    return Padding(padding: EdgeInsets.all(8),
    child: ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) {
        return  Card(
          elevation: 4,  //阴影深度
          color: index == 0 ? Colors.green : null,
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          shape: RoundedRectangleBorder(        
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [ 
              ListTile(title: Text("张三$index", style: TextStyle(fontSize: 29),), subtitle: Text("手机号:110"),),
              Divider(),
              ListTile(title: Text("基本信息"),),
              ListTile(title: Text("住址"),),
            ],
          ),
        );
      }
      ),
    );
  }
}
