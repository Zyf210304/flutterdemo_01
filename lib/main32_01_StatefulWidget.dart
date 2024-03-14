
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

// class HomePage extends StatelessWidget {

//   int counuNumber = 0;

//   HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("App Bar"),),
//       body:  Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("12 + ${counuNumber}", style: Theme.of(context).textTheme.titleLarge),
//             SizedBox(height: 100,),
//             ElevatedButton(onPressed: (){
//               counuNumber ++;
//               print(counuNumber);
//             }, child: Text("增加")),
//           ],
//         ),
//       ),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counuNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("12 + ${counuNumber}",
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    counuNumber++;
                  });
                  // print(counuNumber);
                },
                child: const Text("增加")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counuNumber++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
