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
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(  //相对于外部容器定位 如果没有外部容器 相对于屏幕定位
          children: [
            Positioned(
              left: 10,
              bottom: 0,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
            const Positioned(
              right: 0,
              top: 190,
              child: Text("FLutter"),
            )
          ],
        ),
      ),
    );
  }
}
