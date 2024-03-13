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

    return const Column(
      children: [ 
        SizedBox(
          width: double.infinity,
          height: 50,
          child: Stack(
            children: [
              Align(alignment: Alignment.centerLeft, child: Text("左边"),),
               Align(alignment: Alignment.centerRight, child: Text("右边"),),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: Stack(
            children: [
              Positioned(left: 10, child: Text("左边")),
              Positioned(right: 10, child: Text("右边")),
            ],
          ),
        ),
      ],
    );
  }
}
