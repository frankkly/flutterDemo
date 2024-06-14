import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("按钮类型展示"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(const Size(22, 22)),
                      // elevation: MaterialStateProperty.all<double>(30.0),
                      // 设置背景色
                      backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
                      // 设置字体颜色色
                      foregroundColor: MaterialStatePropertyAll(Colors.green)),
                  onPressed: () {
                    print("普通按钮");
                  },
                  child: const Text("普通按钮")
              ),

            ],

          ),
          SizedBox(
            width: 100,
            height: 50,
            child: ElevatedButton(onPressed: (){}, child: Text("设置宽高")),
          ),
          ElevatedButton.icon(
              onPressed: (){
                print("图标按钮");
              },
              icon: Icon(Icons.ac_unit),
              label:Text("图标按钮")
          ),
          ElevatedButton(
              onPressed: (){},
              child: Text("圆角按钮"),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // 设置圆角半径
                  ),
                )
              ),
          ),
          ElevatedButton(
            onPressed: (){},
            child: Text("圆形按钮"),
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(100, 100)),
                shape: MaterialStateProperty.all<CircleBorder>(
                  CircleBorder(
                    side: BorderSide(
                      color: Colors.green
                    ), // 设置圆角半径
                  ),
                ),
            ),
          ),
          TextButton(onPressed: (){}, child: Text("扁平化button")),
          OutlinedButton(onPressed: (){}, child: Text("边框button")),
          FloatingActionButton(onPressed: (){}, child: Icon(Icons.add)),
          IconButton(onPressed: (){}, icon: Icon(Icons.connected_tv_sharp)),
          DropDownButtonCustom(),
          PopupMenuButtonCustom(),
          Center(
            child: InkWell(
              onTap: () {
                // 点击时的处理逻辑
                print('InkWell 被点击了！');
              },
              child: Container(
                padding: EdgeInsets.all(12.0),
                child: Text('点击我'),
              ),
            ),
          ),
          CupertinoButton(child: Text("iOS风格Button"), onPressed: (){}),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(onPressed: (){}, child: Text("ButtonBar1")),
              ElevatedButton(onPressed: (){}, child: Text("ButtonBar1")),
              ElevatedButton(onPressed: (){}, child: Text("ButtonBar1")),
            ],
          )
        ],
      ),
    );
  }
}


class DropDownButtonCustom extends StatefulWidget {
  const DropDownButtonCustom({super.key});

  @override
  State<DropDownButtonCustom> createState() => _DropDownButtonCustomState();
}

class _DropDownButtonCustomState extends State<DropDownButtonCustom> {

  // 定义下拉菜单的选项
  final List<String> items = ['选项 1', '选项 2', '选项 3'];
  // 当前选中的项
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        items:items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue;
          });
    });
  }
}
enum MenuOptions { option1, option2, option3 }
class PopupMenuButtonCustom extends StatelessWidget {
  const PopupMenuButtonCustom({super.key});
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: (MenuOptions result){
        print(result);
      },
        itemBuilder: (BuildContext context) => <PopupMenuEntry<MenuOptions>>[
      PopupMenuItem(child: Text("1"),value: MenuOptions.option1,),
      PopupMenuItem(child: Text("2"),value: MenuOptions.option2,),
      PopupMenuItem(child: Text("3"),value: MenuOptions.option3,),
    ]);
  }
}
