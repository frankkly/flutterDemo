import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {

  final arguments;

  const SearchPage({super.key,this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索页面"),
      ),
      body: Container(
        color: Colors.green,
        child: Text("搜索页面的内容区域${arguments != null?arguments["id"]:"0"}"),
      ),
    );
  }
}
