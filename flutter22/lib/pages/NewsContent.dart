import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class NewsContentPage extends StatefulWidget {
  Map arguments;
  NewsContentPage({super.key, required this.arguments});

  @override
  State<NewsContentPage> createState() =>
      _NewsContentPageState(arguments: this.arguments);
}

class _NewsContentPageState extends State<NewsContentPage> {
  Map arguments;
  List _list = [];

  _NewsContentPageState({required this.arguments});

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(arguments);
    // _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("新闻详情"),
      ),
      body: Column(
        children: [
          // Text(_list.isNotEmpty?_list[0]["content"]:""),
          Expanded(
              child: InAppWebView(
                initialUrlRequest: URLRequest(url: WebUri('http://www.phonegap100.com/newscontent.php?aid=${this.arguments['aid']}')),
                onWebViewCreated: (InAppWebViewController controller) {
                  // WebView创建完成时调用
                },
                onLoadStart: (InAppWebViewController controller, Uri? url) {
                  // 开始加载页面时调用
                },
                onLoadStop: (InAppWebViewController controller, Uri? url) {
                  // 页面加载完成时调用
                },
                onProgressChanged: (InAppWebViewController controller, int progress) {
                  // 页面加载进度变化时调用
                },
              )
          )
        ],
      ),
    );
  }

  _getData() async {
    var url =
        "http://www.phonegap100.com/appapi.php?a=getPortalArticle&aid=${arguments["aid"]}";
    var response = await Dio().get(url);
    print(url);
    print(response);
    setState(() {
      _list = json.decode(response.data)["result"];
    });

    print(_list);
  }
}
