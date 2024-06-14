import 'dart:async';

import 'package:flutter/material.dart';

class MyDialog extends Dialog {

  late String title;
  late String content;

  _showTimer(context){
    Timer? timer;
    timer = Timer(const Duration(seconds: 2), () {
      Navigator.pop(context);
      timer?.cancel();
    });
  }


  MyDialog(this.title,this.content, {super.key});
  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    // TODO: implement build
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(title),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: 150,
                child: Text(content),
              )
            ],
          ),
        ),
      ),
    );
  }
}
