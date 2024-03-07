//代码快 importM
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text("你好 flutter"),
        ),
        body: const centerText(),
        ),
  ));
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return const Center(
          child: Text(
            "hello Flutter 自定义组件",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.redAccent, fontSize: 40.0),
          ),
        );
  }
  
}

//代码块  ssw  statelessW
class centerText extends StatelessWidget {
    const centerText({super.key});
  
    @override
    Widget build(BuildContext context) {
      return const Center(
          child: Text(
            "hello Flutter 自定义组件 ssw",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.redAccent, fontSize: 40.0),
          ),
        );
    }
  }

