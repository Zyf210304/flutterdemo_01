import 'package:flutter/material.dart';

class MyDialog extends Dialog {
  final String title;
  final String content;
  // final Function onTap;
  final Function()? onTap;
  Function(String) onSelect;

  MyDialog(
      {super.key,
      this.title = "提示",
      required this.content,
      required this.onTap, required this.onSelect});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      type: MaterialType.transparency,
      child: Center(
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
                            onTap: onSelect("hahahhah"), child: const Icon(Icons.close)),
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
