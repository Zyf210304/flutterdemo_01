import 'package:flutter/material.dart';
import '../../tools/keepAliveWrapper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
    _tabController.addListener(() {
      // print(_tabController.index);  //获取两次   滑动时候 返回一次  点击时候返回两次
      if (_tabController.animation!.value == _tabController.index) {
        //获取点击或滑动页面的索引值
        print(_tabController.index);
      }
    });
  }

//组件销毁的时候触发
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //销毁 _tabController
    print("_tabController.dispose()");
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: AppBar(
            elevation: 1,
            backgroundColor: Colors.white,
            title: SizedBox(
              height: 40, //tabBar高度
              child: TabBar(
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  indicatorColor: Colors.red,
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.red,
                  controller: _tabController,
                  onTap: (index) {  //只能监控点击事件
                    print("点击事件${index}");
                  },
                  tabs: const [
                    Tab(
                      child: Text("消息"),
                    ),
                    Tab(
                      child: Text("通知"),
                    ),
                    Tab(
                      child: Text("消息"),
                    ),
                    Tab(
                      child: Text("通知"),
                    ),
                    Tab(
                      child: Text("消息"),
                    ),
                    Tab(
                      child: Text("通知"),
                    ),
                    Tab(
                      child: Text("消息"),
                    ),
                    Tab(
                      child: Text("通知"),
                    ),
                  ]),
            ),
          )),
      body: TabBarView(controller: _tabController, children: [
        KeepAliveWrapper(
            child: ListView(
          children: const [
            ListTile(
              title: Text("1111"),
            ),
            ListTile(
              title: Text("1111"),
            ),
            ListTile(
              title: Text("1111"),
            ),
            ListTile(
              title: Text("1111"),
            ),
            ListTile(
              title: Text("1111"),
            ),
            ListTile(
              title: Text("1111"),
            ),
            ListTile(
              title: Text("1111"),
            ),
            ListTile(
              title: Text("1111"),
            ),
            ListTile(
              title: Text("1331"),
            ),
            ListTile(
              title: Text("1111"),
            ),
            ListTile(
              title: Text("1111"),
            ),
            ListTile(
              title: Text("1111"),
            ),
            ListTile(
              title: Text("112211"),
            ),
            ListTile(
              title: Text("1111"),
            ),
            ListTile(
              title: Text("11242411"),
            ),
            ListTile(
              title: Text("112411"),
            ),
          ],
        )),
        const Text("通知内容"),
        const Text("消息内容"),
        const Text("通知内容"),
        const Text("消息内容"),
        const Text("通知内容"),
        const Text("消息内容"),
        const Text("通知内容"),
      ]),
    );
  }
}
