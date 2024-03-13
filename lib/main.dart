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
    return Padding(padding:  EdgeInsets.all(10),
     child: ListView(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.black,
        ),
         SizedBox(height: 5,),
        Row(
          children: [
            Expanded(
                flex: 2,
                child: SizedBox(
                  height: 180,
                  child: Image.network(
                  "https://pic4.zhimg.com/v2-e49748c39ca64ab1c329512b5fc6d111_r.jpg?source=1940ef5c",
                  fit: BoxFit.cover,
                )),
            ),
           
            Expanded(
                flex: 1,
                child: SizedBox(
                  height: 180,
                  child: Column(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Image.network(
                          "https://pic4.zhimg.com/v2-e49748c39ca64ab1c329512b5fc6d111_r.jpg?source=1940ef5c",
                          fit: BoxFit.cover,
                        )),
                    SizedBox(height: 5,),
                    Expanded(
                        flex: 2,
                        child: Image.network(
                          "https://pic4.zhimg.com/v2-e49748c39ca64ab1c329512b5fc6d111_r.jpg?source=1940ef5c",
                          fit: BoxFit.cover,
                        )),
                  ],
                )),
                ),
          ],
        )
      ],
    ),
    );
  }
}

