import 'package:flutter/material.dart';


class FormTablePage extends StatefulWidget {
  const FormTablePage({super.key});

  @override
  State<FormTablePage> createState() => _FormTablePageState();
}

class _FormTablePageState extends State<FormTablePage> {
  late String userName;
  late String password;
  var sex = 1;
  void _sexChange(value){
    setState(() {
      sex = value;
    });
  }
  List hobby = [
    {
      "check":false,
      "title":"吃饭"
    },
    {
      "check":false,
      "title":"睡觉"
    },
    {
      "check":false,
      "title":"打游戏"
    }
  ];

  List<Widget> _getHobby(){
    List <Widget> tempList = [];
    for (int i = 0; i < hobby.length; i++) {

      tempList.add(
        Row(
          children: [
            Text(hobby[i]["title"] + ":"),
            Checkbox(
                value: hobby[i]["check"],
                onChanged: (value){
                  setState(() {
                    hobby[i]["check"] = value;
                  });
                }),
          ],
        )
      );
    }
    return tempList;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("表单"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: "输入用户信息"
              ),
            ),
            Row(
              children: [
                const Text("男"),
                Radio(
                    value: 1,
                    groupValue: sex,
                    onChanged: _sexChange
                ),
                const SizedBox(width: 30,),
                const Text("女"),
                Radio(
                    value: 2,
                    groupValue: sex,
                    onChanged:_sexChange
                )
              ],
            ),
            SizedBox(height: 20,),
            Column(
              children: _getHobby(),
            ),
            TextField(
              onChanged: (value){},
            ),

            Container(
              child: ElevatedButton(onPressed: (){
                print(this.hobby);
              }, child: Text("提交")),
            )

          ],

        ),

      ),
    );
  }
}
