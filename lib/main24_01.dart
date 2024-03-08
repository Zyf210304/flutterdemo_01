import 'package:flutter/material.dart';


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
      children: const <Widget>[
        ListTile(title: Text("我是一个列表"),),
        Divider(), //下划线
        ListTile(title: Text("我是一个列表"),),
        Divider(), //下划线
        ListTile(title: Text("我是一个列表"),),
        ListTile(title: Text("我是一个列表"),),
        ListTile(title: Text("我是一个列表"),),
        ListTile(title: Text("我是一个列表"),),
        ListTile(title: Text("我是一个列表"),),
        ListTile(title: Text("我是一个列表"),),
        ListTile(title: Text("我是一个列表"),),
        ListTile(title: Text("我是一个列表"),),
        ListTile(title: Text("我是一个列表"),),
        ListTile(title: Text("我是一个列表"),),
        ListTile(title: Text("我是一个列表"),),
        ListTile(title: Text("我是一个列表"),),
        ListTile(title: Text("我是一个列表"),),
      ],
    );
  }
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}
