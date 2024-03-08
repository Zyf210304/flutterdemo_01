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
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: (context, index) {
        return  ListTile(
          title: Text("${listData[index]["title"]}, ---${index +10}"),
          subtitle: Text("${listData[index]["autor"]}, ---$index"),
          // trailing: Image.network("${listData[index]["imageUrl"]}"),
          trailing: index % 3  == 0 ?Image.network("${listData[index]["imageUrl"]}") : null,
          leading: index % 3  != 0 ?Image.network("${listData[index]["imageUrl"]}") : null,
        );
      }
      );
  }
}
