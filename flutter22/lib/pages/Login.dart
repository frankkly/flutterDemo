import 'package:flutter/material.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录"),
      ),
      body: ElevatedButton(
        onPressed: () { 
          Navigator.of(context).pop();
        }, child: Text("登录完成"),
        
      ),
    );
  }
}
