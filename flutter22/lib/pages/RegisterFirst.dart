import 'package:flutter/material.dart';


class RegisterFirstPage extends StatelessWidget {
  const RegisterFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册第一步"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/registerSecond');
            // Navigator.of(context).pushReplacementNamed("/registerSecond");

          }, child: Text("下一步"))
        ],
      ),
    );
  }
}

