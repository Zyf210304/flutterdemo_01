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
    return Padding(padding:  EdgeInsets.all(10),
     child: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 400,
          height: 300,
          color: Colors.red,
        ),
        Container(
          width: 200,
          height: 100,
          color: Colors.yellow,
        ),
        const Text("你好 flutter"),
        const Text("你好 flutter 111"),
      ]
    ),
    );
  }
}

