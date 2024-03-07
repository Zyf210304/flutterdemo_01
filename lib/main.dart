// 代码块
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        body: const Column(
          children: [
            AppBody(),
            MyButton(),
            MyText(),
          ],
        ),
      ),
    );
  }
}

class AppBody extends StatelessWidget {
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 10),
        alignment: Alignment.center, //配置Container容器内元素的方位
        width: 100,
        height: 100,
        transform: Matrix4.translationValues(40, 0, 0),  //位移
        // transform: Matrix4.rotationZ(20),    //旋转
        // transform: Matrix4.skewY(0.2),   倾斜
        decoration: const BoxDecoration(
            //
            color: Colors.red,
            border: Border.fromBorderSide(BorderSide(
                width: 5, color: Colors.blue, style: BorderStyle.solid)),
            // borderRadius: BorderRadius.all(Radius.circular(10))
            borderRadius: BorderRadius.all(Radius.circular(10)), //配置圆角
            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 10.0)],
            // gradient: LinearGradient(colors: [Colors.red, Colors.yellow])  //线性渐变
            gradient: RadialGradient(colors: [Colors.red, Colors.yellow])),
        child: const Text(
          "你好Flutter",
          style: TextStyle(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      // padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
      width: 200,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      child: const Text("Button", style: TextStyle(color: Colors.white, fontSize: 20)),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      decoration: const BoxDecoration(
        color: Colors.green
      ),
      child: const Text("测试text测试text测试text测试text测试text测试text测试text测试text测试text测试text测试text测试text测试text测试text",
       style: TextStyle(fontSize: 20,
        fontWeight: FontWeight.w100, 
        color: Colors.red, 
        fontStyle: FontStyle.italic,
        letterSpacing: 5, 

        decoration: TextDecoration.underline,
        decorationColor: Colors.black, 
        decorationStyle: TextDecorationStyle.dashed),
       textAlign: TextAlign.center,
       maxLines: 3,
       overflow: TextOverflow.ellipsis,
       ),
    );
  }
}