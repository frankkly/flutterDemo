import 'package:flutter/material.dart';



class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  int sex = 1;
  int sex2 = 1;
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品页面"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Radio(value: 1, groupValue: this.sex, onChanged: (value){
                  setState(() {
                    this.sex = value!;
                  });
                }),
                Radio(value: 2, groupValue: this.sex, onChanged: (value){
                  setState(() {
                    this.sex = value!;
                  });
                }),
                Radio(value: 3, groupValue: this.sex, onChanged: (value){
                  setState(() {
                    this.sex = value!;
                  });
                }),
                SizedBox(height: 20,),


              ],
            ),
            RadioListTile(value: 1, groupValue: this.sex2, onChanged: (value){
              setState(() {
                this.sex2 = value!;
              });
            }),
            RadioListTile(value: 23, groupValue: this.sex2, onChanged: (value){
              setState(() {
                this.sex2 = value!;
              });
            }),
            RadioListTile(value: 3, groupValue: this.sex2, onChanged: (value){
              setState(() {
                this.sex2 = value!;
              });
            },title: Text("ddd"),selected: this.sex2 == 3,),
            SizedBox(height: 50,),
            
            Switch(value: this.flag, onChanged: (value){
              setState(() {
                this.flag = value;
              });
            })
          ],
        ),
      ),
    );
  }
}
