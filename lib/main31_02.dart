
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
        child: ListView(
          children: [
            Row(
              children: [
                Text(
                  "热搜",
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            const Divider(),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                Button("按钮文本", onPressed: () {}),
                Button("按钮文本   ", onPressed: () {}),
                Button("按钮文  本", onPressed: () {}),
                Button("按钮              文本", onPressed: () {}),
                Button("按钮文本", onPressed: () {}),
                Button("按钮   文本", onPressed: () {}),
                Button("按钮  文本", onPressed: () {}),
                Button("按  钮文本", onPressed: () {}),
                Button("按     钮文本", onPressed: () {}),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "历史记录",
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            const Divider(),
            const Column(
              children: [
                ListTile(title: Text("历史记录1")),
                ListTile(title: Text("历史记录2")),
                ListTile(title: Text("历史记录3")),
                ListTile(title: Text("历史记录4")),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: OutlinedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(221, 227, 216, 216)),
                    foregroundColor: MaterialStateProperty.all(Colors.black87),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.delete),
                  label: const Text("清空历史记录")),
            )
          ],
        ));
  }
}

//自定义按钮
class Button extends StatelessWidget {
  String text; //按钮文字
  void Function()? onPressed; //按钮方法
  Button(this.text, {super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(const Color.fromARGB(221, 227, 216, 216)),
        foregroundColor: MaterialStateProperty.all(Colors.black87),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
