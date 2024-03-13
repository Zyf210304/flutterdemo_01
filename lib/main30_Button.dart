import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
              Container(
                //通过container 控制按钮大小
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
                    icon: const Icon(
                      Icons.thumb_up,
                    ),
                    label: const Text(
                      "点赞",
                      style: TextStyle(fontSize: 20),
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: 40,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.red), //背景颜色
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white), //文本颜色
                      ),
                      onPressed: () {
                        print("ElevatedButton");
                      },
                      child: const Text(
                        "登录",
                        style: TextStyle(fontSize: 20),
                      )),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              //设置边角按钮
              ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5) //配置圆角
                        )),
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  onPressed: () {
                    print("ElevatedButton");
                  },
                  child: const Text(
                    "按钮",
                    style: TextStyle(fontSize: 20),
                  )),

              //设置边角按钮
              Container(
                width: 100,
                height: 100,
                child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(const CircleBorder(
                          side:
                              BorderSide(color: Colors.yellow, width: 2) //配置圆形
                          )),
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: () {
                      print("ElevatedButton");
                    },
                    child: const Text(
                      "按钮",
                      style: TextStyle(fontSize: 20),
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      BorderSide(width: 1, color: Colors.black)
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  onPressed: () {
                    print("11");
                  },
                  child: const Text("边框按钮")),
            ],
          ),
        ],
      ),
    );
  }
}
