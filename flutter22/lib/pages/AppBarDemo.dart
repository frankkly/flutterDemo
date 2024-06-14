import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  const TabBarControllerPage({super.key});

  @override
  State<TabBarControllerPage> createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("地方反反复复"),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: "ddd",),
            Tab(text: "ddd",),
            Tab(text: "ddd",),
            Tab(text: "ddd",),
          ],
        ),

      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(child:Text("dsdddd")),
          Center(child:Text("dsdddd")),
          Center(child:Text("dsdddd")),
          Center(child:Text("dsdddd")),

        ],
      ),
    );
  }
}
