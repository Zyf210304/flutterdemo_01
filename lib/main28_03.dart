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

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey.withAlpha(80),
        child: Stack(
          //相对于外部容器定位 如果没有外部容器 相对于屏幕定位
          children: [
            ListView.builder(
              padding: const EdgeInsets.only(top:50),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("我是一个列表$index"),
                  );
                }),
            
            Positioned(
              left: 0,
              top: 0,
              width: size.width - 20,
              height: 44,
              child: 
            Row(
              children: [
                Expanded(
                  flex: 1,
                  
                  child: Container(
                    height: 44,
                    alignment: Alignment.center,
                    color: Colors.black,
                    child:  const Text("二级导航", style: TextStyle(color: Colors.white),),
                ))
               ],
            )
            )

          ],
        ),
      ),
    );
  }
}
