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
        ListTile(leading: Icon(Icons.home,color: Colors.green,),title: Text("首页"),),
        Divider(), //下划线
        ListTile(leading: Icon(Icons.assessment,color: Colors.purple,),title: Text("订单"),),
        Divider(), //下划线
        ListTile(leading: Icon(Icons.wallet,color: Colors.yellow,),title: Text("代付款"),),
        Divider(), //下划线
        ListTile(leading: Icon(Icons.assessment,color: Colors.green,),title: Text("订单"),),
        Divider(), //下划线
        ListTile(leading: Icon(Icons.star,color: Colors.red,),title: Text("收藏"),),
        Divider(), 
        ListTile(leading: Icon(Icons.settings, color: Colors.black,),
        title: Text("设置"),
        trailing: Icon(Icons.chevron_right_sharp),
        ),
        Divider(), 
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
