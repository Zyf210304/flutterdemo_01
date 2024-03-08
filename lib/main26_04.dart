import 'package:flutter/material.dart';
import './res/listData.dart';

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
        body: MyHomePage(),
        //  Container(
        //   padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        //   child: MyHomePage(),
        // ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key}) {
    print(listData);
  }

  Widget _initGrideViewData(context, i) {
    return Container(
        decoration: BoxDecoration(color: Colors.blue, 
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.red)
        ),
        child: Column(
          children: [
            Image.network(
              "${listData[i]["imageUrl"]}",
              width: 200,
              height: 150,
              fit: BoxFit.fitWidth,
            ),
            Divider(height: 5,),
            Text("${listData[i]["title"]}  ---$i",
                style: TextStyle(color: Colors.white, fontSize: 15)),
            Divider(height: 5,),
            Text("${listData[i]["autor"]}  ---$i",
                style: TextStyle(color: Colors.red, fontSize: 12)),
          ],
        ),
      );

  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: listData.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3, 
      // maxCrossAxisExtent: 150,
      crossAxisSpacing: 10, //水平间距
      mainAxisSpacing: 10, //竖直间距
      childAspectRatio: 0.4,  //宽高比
      ),
      itemBuilder:_initGrideViewData,
    );
  }
}
