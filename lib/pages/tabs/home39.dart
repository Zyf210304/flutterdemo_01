import 'package:flutter/material.dart';
import 'package:flutterdemo_01/pages/search.dart';
import 'package:flutterdemo_01/pages/form.dart';

import '../../widget/myDialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void _myDialog()  async {
  var  result = await  showDialog(
        context: context,
        builder: (context) {
          return MyDialog(
            content: "请确认内容",
            onTap: () {
              Navigator.of(context).pop("asdada");
              print("close");
            },
            onSelect: (ele) {
              // Navigator.of(context).pop();
              Navigator.of(context).pop(ele);
              // print(ele);
            },
          );
        });
    print(result);
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SearchPage()));
              },
              child: const Text("搜索 基本路由跳转")),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const FormPage(
                          arguments: {},
                        )));
              },
              child: const Text("表单")),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/form",
                    arguments: {"name": "zhangsan"});
              },
              child: const Text("表单 命名路由传值")),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/news');
              },
              child: const Text("新闻  命名路由跳转")),
          ElevatedButton(
              onPressed: () {
                _myDialog();
              },
              child: const Text("myDialog")),
        ],
      ),
    );
  }
}
