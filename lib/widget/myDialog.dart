import 'package:flutter/material.dart';

class MyDialog extends Dialog {
  final String title;
  final String content;
  // final Function onTap;
  final Function()? onTap;
  final Function(String) onSelect;

  MyDialog(
      {super.key,
      this.title = "提示",
      required this.content,
      required this.onTap, required this.onSelect});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      type: MaterialType.transparency,    //设置背景色透明
      child: Center(              //center包裹 组件 防止全屏
        child: Container(  
          height: 200,
          width: 200,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Align(
                        // alignment: Alignment.centerLeft,
                        child: Text(
                          title,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                            // onTap: onSelect("hahahhah"), child: const Icon(Icons.close)),
                            //  onTap: onTap, child: const Icon(Icons.close)),
                            onTap:() => onSelect("测试"), child: const Icon(Icons.close)),
                      )
                    ],
                  )),
              const Divider(
                height: 3,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                child: Text(content),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
