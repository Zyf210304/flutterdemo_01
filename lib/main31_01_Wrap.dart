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
    return Padding(padding: EdgeInsets.all(10),
    child: Wrap(
      // alignment: WrapAlignment.center,
      // direction: Axis.vertical, 
      spacing: 10,  //水平间距
      runSpacing: 10,  //垂直间距
      children: [
        Button("按钮文本", onPressed: (){}),
        Button("按钮文本   ", onPressed: (){}),
        Button("按钮文  本", onPressed: (){}),
        Button("按钮              文本", onPressed: (){}),
        Button("按钮文本", onPressed: (){}),
        Button("按钮   文本", onPressed: (){}),
        Button("按钮  文本", onPressed: (){}),
        Button("按  钮文本", onPressed: (){}),
        Button("按     钮文本", onPressed: (){}),
      ],
    ),);
  }
}

//自定义按钮
class Button extends StatelessWidget {
  String text; //按钮文字
  void Function()? onPressed;  //按钮方法
  Button(this.text,{super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(const Color.fromARGB(221, 227, 216, 216)),
        foregroundColor: MaterialStateProperty.all(Colors.black87),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
