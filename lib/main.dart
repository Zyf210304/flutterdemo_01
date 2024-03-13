import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      padding: EdgeInsets.all(8),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    print("ElevatedButton");
                  },
                  child: const Text("升高按钮")),
              TextButton(
                  onPressed: () {
                    print("TextButton");
                  },
                  child: const Text("文本按钮")),
              OutlinedButton(
                  onPressed: () {
                    print("OutlinedButton");
                  },
                  child: Text("边框按钮")),
              IconButton(
                  onPressed: () {
                    print("IconButton");
                  },
                  icon: const Icon(Icons.settings))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    print("ElevatedButton.icon");
                  },
                  icon: const Icon(Icons.thumb_up),
                  label: const Text("点赞")),
              TextButton.icon(
                  onPressed: () {
                    print("TextButton.icon");
                  },
                  icon: const Icon(Icons.thumb_up),
                  label: const Text("点赞")),
              OutlinedButton.icon(
                  onPressed: () {
                    print("OutlinedButton.icon");
                  },
                  icon: const Icon(Icons.thumb_up),
                  label: const Text("点赞")),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.red), //背景颜色
                    foregroundColor:
                        MaterialStateProperty.all(Colors.white), //文本颜色
                  ),
                  onPressed: () {
                    print("ElevatedButton.icon");
                  },
                  icon: const Icon(Icons.thumb_up),
                  label: const Text("点赞")),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(    //通过container 控制按钮大小
                height: 60,
                width: 200,
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.red), //背景颜色
                    foregroundColor:
                        MaterialStateProperty.all(Colors.white), //文本颜色
                  ),
                  onPressed: () {
                    print("ElevatedButton.icon");
                  },
                  icon: const Icon(Icons.thumb_up,),
                  label: const Text("点赞", style: TextStyle(fontSize: 20),)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
