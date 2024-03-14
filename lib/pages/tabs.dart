import 'package:flutter/material.dart';
import './tabs/collection.dart';
import './tabs/home.dart';
import './tabs/shop.dart';
import './tabs/person.dart';

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
    CollectionPage(),
    PersonPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
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
          BottomNavigationBarItem(icon: Icon(Icons.collections), label: "收藏"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
        ],),
      );
  }
}