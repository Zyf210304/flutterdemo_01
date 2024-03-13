import 'package:flutter/material.dart';
import './res/listData.dart';

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

  List<Widget> _initCardData() {

    var tempList = listData.map( (value) {
      return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 7,
                    child: Image.network(
                      value["imageUrl"]!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ListTile(
                    // leading: ClipOval(
                    //   child: Image.network(
                    //     "https://pic4.zhimg.com/v2-e49748c39ca64ab1c329512b5fc6d111_r.jpg?source=1940ef5c",
                    //     fit: BoxFit.cover,
                    //     width: 40,
                    //     height: 40,
                    //   ),
                    // ),
                    leading: CircleAvatar(
                      // radius: 50,
                      backgroundImage: NetworkImage("https://pic4.zhimg.com/v2-e49748c39ca64ab1c329512b5fc6d111_r.jpg?source=1940ef5c"),
                    ),
                    title: Text(value["title"]!),
                    subtitle: Text(value["autor"]!),
                  )
                ],
              ),
            );
    }
    );

    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: ListView (
        children: _initCardData(),
      ),
      // child: ListView.builder(
      //     itemCount: 8,
      //     itemBuilder: (context, index) {
      //       return Card(
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10)),
      //         child: Column(
      //           children: [
      //             AspectRatio(
      //               aspectRatio: 16 / 7,
      //               child: Image.network(
      //                 "https://pic4.zhimg.com/v2-e49748c39ca64ab1c329512b5fc6d111_r.jpg?source=1940ef5c",
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //             const ListTile(
      //               // leading: ClipOval(
      //               //   child: Image.network(
      //               //     "https://pic4.zhimg.com/v2-e49748c39ca64ab1c329512b5fc6d111_r.jpg?source=1940ef5c",
      //               //     fit: BoxFit.cover,
      //               //     width: 40,
      //               //     height: 40,
      //               //   ),
      //               // ),
      //               leading: CircleAvatar(
      //                 // radius: 50,
      //                 backgroundImage: NetworkImage("https://pic4.zhimg.com/v2-e49748c39ca64ab1c329512b5fc6d111_r.jpg?source=1940ef5c"),
      //               ),
      //               title: Text("XXXX"),
      //               subtitle: Text("xxxxxxxxx"),
      //             )
      //           ],
      //         ),
      //       );
      //     }),
    );
  }
}
