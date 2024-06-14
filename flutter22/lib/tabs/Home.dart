import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter22/pages/Search.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class HomeHome extends StatefulWidget {
  const HomeHome({super.key});

  @override
  State<HomeHome> createState() => _HomeHomeState();
}

class _HomeHomeState extends State<HomeHome> {
  late Map data;
  String _news = "";
  String _news2 = "";
  List listData = [];

  _getData() async {
    var apiUrl = "http://a.itying.com/api/productlist";
    Response response = await Dio().get(apiUrl);
    print(response.data);
  }
  _postData() async {
    Map dic = {
      "userName":"ddd",
      "age":20
    };
    var apiUrl = "http://a.itying.com/api/productlist";
    Response response = await Dio().post(apiUrl,data: dic);
    print(response.data);


    // var url = Uri.http(
    //     'a.itying.com',
    //     '/api/productlist',
    // );
    // var result = await http.get(url);
    // print('Response status: ${result.statusCode}');
    // print(result.body);
    //
    //
    // setState(() {
    //   listData =json.decode(result.body)["result"];
    // });

  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.indigo,
      child: Center(
        child: ListView(
          children: [
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/search",
                      arguments: {"id": 222233332});
                },
                child: const Text("去搜索")
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/product");
                },
                child: const Text("去商品")
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                child: const Text("登录")
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/registerFirst");
                },
                child: const Text("注册")
            ),
            ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context, "/appBarDemo");
                  _getData();
                },
                child: Text("get请求数据")
            ),
            Text(_news),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/postData");
                  // _postData();
                },
                child: Text("post请求数据")
            ),
            Text(_news2),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/deviceInfo");
                  // _postData();
                },
                child: Text("设备信息")
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/imagePicker");
                  // _postData();
                },
                child: Text("ImagePicker")
            ),
          ],
        ),
      ),
    );
  }
}
