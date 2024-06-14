import 'package:flutter/material.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';

const String MIN_DATETIME = '2010-05-12';
const String MAX_DATETIME = '2030-11-25';
const String INIT_DATETIME = '2021-08-31';

class DatePickerPage extends StatefulWidget {
  const DatePickerPage({super.key});
  @override
  State<DatePickerPage> createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  DateTime _dateTime = DateTime.now();

  _showDatePicker (){
    DatePicker.showDatePicker(
      context,
      onMonthChangeStartWithFirstDate: true,
      pickerTheme: const DateTimePickerTheme(
        showTitle: true,
        confirm: Text('custom Done', style: TextStyle(color: Colors.red)),

      ),
      minDateTime: DateTime.parse(MIN_DATETIME),
      maxDateTime: DateTime.parse(MAX_DATETIME),
      initialDateTime: DateTime.now(),
      // dateFormat: "yyyy-mm-dd-ss",
      dateFormat: "yyyy年M月d日   ,H时:m分",
      pickerMode: DateTimePickerMode.datetime,
      locale: DateTimePickerLocale.zh_cn,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      onChange: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }


  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("时间"),
      ),
      body:Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Row(
                      children: [
                        Text(_dateTime.toString()),
                        const Icon(Icons.arrow_drop_down)
                      ],
                    ),
                    onTap: (){
                      _showDatePicker();
                    } ,
                  )
                ],
              )
            ],
          ),
        ),
      ) ,
    );
  }
}
