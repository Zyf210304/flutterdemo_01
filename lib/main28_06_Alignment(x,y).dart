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
    final size = MediaQuery.of(context).size;

    return Container(
      width: 300,
      height: 300,
      color: Colors.red,
      child: const Align(
        // A value of -1.0 corresponds to the leftmost edge. A value of 1.0
        alignment: Alignment(-0.5,0.5),
        child: Text("你好 Flutter"),
      )

    );
  }
}
