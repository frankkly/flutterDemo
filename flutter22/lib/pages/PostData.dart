import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:dio/dio.dart';

class PostDataPage extends StatefulWidget {
  const PostDataPage({super.key});

  @override
  State<PostDataPage> createState() => _PostDataPageState();
}

class _PostDataPageState extends State<PostDataPage> {
  List _listData = [];
  int _page = 1;
  bool flag = true;// 判断有没有数据了
  final ScrollController _scrollController = ScrollController();

  _getData(bool isPull) async {
    if (!flag) {
      return;
    }
    if (isPull){
      _page = 1;
    }else{
      _page++;
    }
    var url =
        "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=$_page";
    var response = await Dio().get(url);
    List res = json.decode(response.data)["result"];
    print(response.data);
    print(url);
    setState(() {
      if (isPull){
        _listData = res;
      }else{
        _listData.addAll(res);
      }

    });
    if (res.length < 20) {
      flag = false;
    }
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData(true);
    _scrollController.addListener(() {
      // print(_scrollController.position.pixels);
      // print(_scrollController.position.maxScrollExtent);
      // 如果滚动条下拉距离>整个页面的高度，可以稍微减点，不用拉到底就能刷新
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getData(false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("post请求"),
        ),
        body: _listData.isEmpty ? const Text("加载中") : _getListView()
    );
  }

  Widget _getListView() {
    return RefreshIndicator(
        onRefresh: _onRefresh,// 返回类型必须是Future
        child: ListView.builder(
          controller: _scrollController,
          itemCount: _listData.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  title: Text(
                    _listData[index]["title"],
                    maxLines: 1,
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, "/newsContent",arguments: {"aid":_listData[index]["aid"]});
                  },
                  // subtitle: Text(_listData[index]["title"]),
                ),
                const Divider(),
                // 在最后添加一个加载指示器，需要判断一下当前的下标和是否有更多数据，
                // 只有两个条件都满足的情况下才显示加载指示器
                index == _listData.length-1 && flag? _getMoreWidget():Container()
              ],
            );
          },
        )
    );
  }

  // 下拉刷新,这个方法执行完，圈圈指示器就会自动消失
  Future<void> _onRefresh() async {
    print("下拉刷新");
    _getData(true);
    await Future.delayed(Duration(milliseconds: 2000), () {
      print("请求数据完成");
    });
  }

  // 上拉加载组件圈圈
  Widget _getMoreWidget(){
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("加载中"),
            CircularProgressIndicator(
              strokeWidth: 1.0,
            )
          ],
        ),
      ),
    );
  }
}
