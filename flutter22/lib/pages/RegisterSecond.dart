import 'package:flutter/material.dart';


class RegisterSecondPage extends StatelessWidget {
  const RegisterSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册第二步"),
      ),
      body: ElevatedButton(onPressed: (){
        Navigator.pushNamed(context, '/registerThird');
        // Navigator.pushReplacementNamed(context, "/registerThird");
      }, child: Text("下一步")),
    );
  }
}