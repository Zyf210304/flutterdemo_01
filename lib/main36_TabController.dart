import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override //生命周期函数 当组件初始化时候就会触发
  void initState() {
    super.initState();
    _tabController = TabController(length: 12, vsync: this);
  }

  List<String> list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              print("左侧按钮图标");
            },
            icon: const Icon(Icons.menu)), // 左侧图标
        backgroundColor: Colors.red, // 导航背景颜色
        title: const Text("Flutter App"),
        actions: [
          // 导航右侧图标
          IconButton(
              onPressed: () {
                print("右侧按钮图标");
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                print("右侧按钮图标");
              },
              icon: const Icon(Icons.more_horiz)),
        ],
        bottom:  TabBar(
          isScrollable: true,

          dividerHeight: 0,
          tabAlignment: TabAlignment.start,  // 默认52 不设置 偏移量很大

          labelColor: Colors.yellow,

          indicatorColor: Colors.white,
          indicatorWeight: 2,
          indicatorPadding: const EdgeInsets.only(bottom: 5),
          indicatorSize: TabBarIndicatorSize.label,
          // indicator:  BoxDecoration(
          //   color: Colors.blue,
          //   borderRadius: BorderRadius.circular(10),
          // ),

          controller: _tabController,
          tabs: const [
          Tab(
            child: Text("第一栏"),
          ),
          Tab(
            child: Text("第二栏"),
          ),
          Tab(
            child: Text("第三栏"),
          ),
          Tab(
            child: Text("第四栏"),
          ),
          Tab(
            child: Text("第一栏"),
          ),
          Tab(
            child: Text("第二栏"),
          ),
          Tab(
            child: Text("第三栏"),
          ),
          Tab(
            child: Text("第四栏"),
          ),
          Tab(
            child: Text("第一栏"),
          ),
          Tab(
            child: Text("第二栏"),
          ),
          Tab(
            child: Text("第三栏"),
          ),
          Tab(
            child: Text("第四栏"),
          ),
        ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
        const Text("第一栏"),
         ListView(
          children: const [ 
            ListTile(title: Text("第二栏"),),
            ListTile(title: Text("第二栏"),),
          ],
        ),
         ListView(
          children: const [ 
            ListTile(title: Text("第三栏"),),
            ListTile(title: Text("第三栏"),),
          ],
        ),
         ListView(
          children: const [ 
            ListTile(title: Text("第四栏"),),
            ListTile(title: Text("第四栏"),),
          ],
        ),
        const Text("第一栏"),
         ListView(
          children: const [ 
            ListTile(title: Text("第二栏"),),
            ListTile(title: Text("第二栏"),),
          ],
        ),
         ListView(
          children: const [ 
            ListTile(title: Text("第三栏"),),
            ListTile(title: Text("第三栏"),),
          ],
        ),
         ListView(
          children: const [ 
            ListTile(title: Text("第四栏"),),
            ListTile(title: Text("第四栏"),),
          ],
        ),
        const Text("第一栏"),
         ListView(
          children: const [ 
            ListTile(title: Text("第二栏"),),
            ListTile(title: Text("第二栏"),),
          ],
        ),
         ListView(
          children: const [ 
            ListTile(title: Text("第三栏"),),
            ListTile(title: Text("第三栏"),),
          ],
        ),
         ListView(
          children: const [ 
            ListTile(title: Text("第四栏"),),
            ListTile(title: Text("第四栏"),),
          ],
        ),
      ]),
    );
  }
}
