import 'package:flutter/material.dart';
import 'package:flutter22/pages/Form.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const TabBar(
                isScrollable: true,
                indicatorColor: Colors.yellow,
                unselectedLabelColor: Colors.blue,
                labelColor: Colors.deepPurple,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    text: "dd",
                  ),
                  Tab(
                    text: "dsadasdsa",
                  ),
                  Tab(
                    text: "dsadasdsa",
                  ),
                  Tab(
                    text: "dsadasdsa",
                  ),
                  Tab(
                    text: "dsadasdsa",
                  ),
                  Tab(
                    text: "dsadasdsa",
                  ),
                  Tab(
                    text: "dsadasdsa",
                  ),
                  Tab(
                    text: "dsadasdsa",
                  )
                ]),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: const [
                  ListTile(title: Text("ddd")),
                ],
              ),
              ListView(
                children: const [
                  ListTile(title: Text("ddd")),
                ],
              )
            ],
          ),
        ));
  }
}
