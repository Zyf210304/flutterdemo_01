import 'package:flutter/material.dart';


//其他页面进入from页面 通过命名路由传值
class FormPage extends StatefulWidget {

  final Map arguments; 

  const FormPage({super.key,required this.arguments});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.arguments);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("表单"),
      ),
      body: const Center(
        child: Text("表单"),
      ),
    );
  }
}