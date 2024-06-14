import 'package:flutter/material.dart';



class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  var userName = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userName.text = "初始值";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表单")
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "请输入用户名",
              ),
              controller: userName,
              onChanged: (value){
                userName.text = value;
              },
            ),
            SizedBox(height: 20,),
            Container(
              child: ElevatedButton(onPressed: (){
                print(userName.text);
              }, child: Text("dddd")),
            )
          ],
        ),
      ),
    );
  }
}

