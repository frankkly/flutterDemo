import 'dart:ffi';

import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({super.key});

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
      ),
      body: Column(
        children: [
          Checkbox(
              value: this.flag,
              onChanged: (value){
                setState(() {
                  flag = !flag;
                });
              }
          ),
          Checkbox(
              value: this.flag,
              onChanged: (value){
                setState(() {
                  flag = !flag;
                });
              }
          ),
          CheckboxListTile(
              value: this.flag,
              onChanged: (value){
                setState(() {
                  flag = !flag;
                });
              }),
        ],
      ),
    );
  }
}


