import 'package:flutter/material.dart';
import 'Home.dart';
import 'Setting.dart';
import 'Category.dart';

class Tabs extends StatefulWidget {
  final index;
  const Tabs({super.key, this.index = 0});

  @override
  State<Tabs> createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  _TabsState(index) {
    this._currentIndex = index;
  }
  List _pageList = [HomeHome(), SettingPage(), CategoryPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter demo"),
      ),
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 44,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "首页",
              backgroundColor: Colors.lightGreenAccent),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "我的"),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.blue,
        ),
        height: 80,
        width: 80,

        child: FloatingActionButton(
          child: Icon(Icons.ac_unit),
          onPressed: (){
            setState(() {
              _currentIndex = 1;
            });

          },
          backgroundColor: _currentIndex == 1?Colors.green:Colors.yellow,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}
