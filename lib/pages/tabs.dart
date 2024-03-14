import 'package:flutter/material.dart';
import './tabs/collection.dart';
import './tabs/home.dart';
import './tabs/shop.dart';
import './tabs/person.dart';
import './tabs/message.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    ShopPage(),
    MessagePage(),
    CollectionPage(),
    PersonPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      image: DecorationImage(image: NetworkImage("https://pic4.zhimg.com/v2-e49748c39ca64ab1c329512b5fc6d111_r.jpg?source=1940ef5c"), fit: BoxFit.cover),
                      ),
                    child:  Column(
                      children: [ 
                        ListTile(leading: CircleAvatar(child: Icon(Icons.people),),title: Text("张三", style: TextStyle(color: Colors.white),),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(height: 60,),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text("个人中心"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("个人中心"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("个人中心"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("个人中心"),
            ),
          ],
        ),
      ),
      endDrawer: const Drawer(
        child: Text("右侧侧边栏"),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, //如果底部有>=4个菜单 需要配置的参数
        iconSize: 30,
        // selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.black,
        fixedColor: Colors.red,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "商城"),
          BottomNavigationBarItem(icon: Icon(null), label: "消息"),
          BottomNavigationBarItem(icon: Icon(Icons.collections), label: "收藏"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
        ],
      ),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: FloatingActionButton(
          backgroundColor: _currentIndex == 2 ? Colors.red : Colors.yellow,
          shape: const CircleBorder(
              side: BorderSide(
                  color: Colors.white, width: 2, style: BorderStyle.solid)),
          onPressed: () {
            setState(() {
              _currentIndex = 2;
            });
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, //可以控制浮动按钮的位置
    );
  }
}
