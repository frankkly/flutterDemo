import 'package:flutter/material.dart';


class FloatingActionButtonPage extends StatelessWidget {
  const FloatingActionButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("d"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: (){},
        backgroundColor: Colors.green,

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
