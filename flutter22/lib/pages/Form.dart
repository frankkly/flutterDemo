import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  String title;

  FormPage({super.key,this.title = "表单"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("back"),

      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text("ffff"),
            subtitle: Text("fdsfdsfdsfdsf"),
          ),
          ListTile(
            title: Text("ffff"),
            subtitle: Text("fdsfdsfdsfdsf"),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(title??"d"),
      ),

    );
  }
}
