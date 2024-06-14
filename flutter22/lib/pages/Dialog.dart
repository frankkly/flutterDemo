import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter22/pages/CustomDialog.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({super.key});

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  // final _showDialog1 = ;
  // final Function _showDialog2 = (){
  //
  // };
  // final Function _showDialog3 = (){
  //
  // };
  // final Function _showDialog4 = (){
  //
  // };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              showDialog(context: context, builder: (context){
                return Container(
                  height: 200,
                  color: Colors.orangeAccent,

                );
              });
            }, child: Text("showDialog")),
            ElevatedButton(onPressed: () {
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: Text("提示信息"),
                  content: Text("吃屎"),
                  actions: [
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("确定")),
                    ElevatedButton(onPressed: (){}, child: Text("取消")),
                    ElevatedButton(onPressed: (){}, child: Text("NONONO")),
                  ],
                );
              });
            }, child: Text("AlertDialog")),
            ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (context){
                return SimpleDialog(
                  title: Text("选择你你你"),
                  children: [
                    SimpleDialogOption(
                      child: Text("A"),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    ),
                    Divider(),
                    SimpleDialogOption(
                      child: Text("B"),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    )
                  ],
                );
              });
            }, child: Text("SimpleDialog")),
            ElevatedButton(onPressed: (){
              showModalBottomSheet(context: context, builder: (context){
                return Container(
                  height: 350,
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text("fdsfdsfdsf "),
                        onTap: (){

                        },
                      ),
                      ListTile(
                        title: Text("是范德a"),
                        onTap: (){

                        },
                      ),
                      ListTile(
                        title: Text("是ss"),
                        onTap: (){

                        },
                      )
                    ],
                  ),
                );
              });
            }, child: Text("showModalBottomSheet")),
            ElevatedButton(onPressed: (){
              Fluttertoast.showToast(
                msg: "dfdsfdsfdsfdsf",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.grey,
                textColor: Colors.deepPurple,
                fontSize: 20
              );
            }, child: Text("Fluttertoast")),

            ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (context){
                return MyDialog(
                  "我是标题","我是内容"
                );
              });

            }, child: Text("CustomDialog")),
          ],
        ),
      ),
    );
  }
}
