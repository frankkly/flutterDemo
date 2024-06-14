import 'package:flutter/material.dart';
import 'package:flutter22/tabs/Tabs.dart';

class RegisterThirdPage extends StatelessWidget {
  const RegisterThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("注册第三步"),
      ),
      body: ElevatedButton(
          onPressed: () {
            // Navigator.of(context).pop();
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> Tabs(index: 2,)), (route) => false);
            
          },
          child: const Text("确定")),
    );
  }
}
