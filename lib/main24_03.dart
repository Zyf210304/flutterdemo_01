import 'package:flutter/material.dart';
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
    return ListView(
      padding: EdgeInsets.fromLTRB(8, 10, 8, 10),
      children:  <Widget>[
          ListTile(
            leading: Image.network("https://pic4.zhimg.com/v2-e49748c39ca64ab1c329512b5fc6d111_r.jpg?source=1940ef5c"),
            title: Text("主标题"),
            subtitle: Text("副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题", maxLines: 2, overflow: TextOverflow.ellipsis,),
          ),
          Divider(),
          ListTile(
            leading: Image.network("https://pic4.zhimg.com/v2-e49748c39ca64ab1c329512b5fc6d111_r.jpg?source=1940ef5c"),
            title: Text("主标题"),
            // subtitle: Text("副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题", maxLines: 2, overflow: TextOverflow.ellipsis,),
          ),
          Divider(),
          ListTile(
            trailing: Image.network("https://pic4.zhimg.com/v2-e49748c39ca64ab1c329512b5fc6d111_r.jpg?source=1940ef5c"),
            title: Text("主标题"),
            subtitle: Text("副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题", maxLines: 2, overflow: TextOverflow.ellipsis,),
          ),
          Divider(),
          ListTile(
            leading: Image.network("https://pic4.zhimg.com/v2-e49748c39ca64ab1c329512b5fc6d111_r.jpg?source=1940ef5c"),
            title: Text("主标题"),
            subtitle: Text("副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题", maxLines: 2, overflow: TextOverflow.ellipsis,),
          ),
          Divider(),
          ListTile(
            trailing: Image.network("https://pic4.zhimg.com/v2-e49748c39ca64ab1c329512b5fc6d111_r.jpg?source=1940ef5c"),
            title: Text("主标题"),
            subtitle: Text("副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题副标题", maxLines: 2, overflow: TextOverflow.ellipsis,),
          ),
          Divider(),
      ],
    );
  }
}
