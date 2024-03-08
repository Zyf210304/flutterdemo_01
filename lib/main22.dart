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
        body: const Column(
          children: [
            MyNetImage(),
            SizedBox(height: 20,),
            CircularImg(),
            SizedBox(height: 20,),
            ClipeImg(),
            SizedBox(height: 20,),
            LocalImage(),
          ],
        )
      ),
    );
  }
}

/*
图片地址：
https://www.itying.com/images/201906/goods_img/1120_P_1560842352183.png
https://www.itying.com/themes/itying/images/ionic4.png
*/

//网络图片
class MyNetImage extends StatelessWidget {
  const MyNetImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // alignment: Alignment.centerLeft,
        height: 200,
        width: 200,
        decoration: const BoxDecoration(
          color: Colors.yellow,
        ),
        child: Image.network("https://www.itying.com/themes/itying/images/ionic4.png",
         scale: 2, 
        //  alignment: Alignment.centerRight,
        // fit: BoxFit.fill,
        // fit: BoxFit.cover,
        repeat: ImageRepeat.repeat,
         ),
      ),
    );
  }
}

//圆角图片
class CircularImg extends StatelessWidget {
  const CircularImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(75),
        image: DecorationImage(
          image: NetworkImage('https://www.itying.com/images/201906/goods_img/1120_P_1560842352183.png'),
          fit: BoxFit.cover
          )
      ),
    );
  }
}

//clipover 原型图片  //椭圆图形 宽=高 圆形
class ClipeImg extends StatelessWidget {
  const ClipeImg({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network("https://www.itying.com/themes/itying/images/ionic4.png",
      width: 150,
      height: 150,
      fit: BoxFit.cover,
      ),
    );
  }

}


//加载本地图片
class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: const BoxDecoration(
        color: Colors.red,
      ),
      child: Image.asset(
        'images/luffy.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}


