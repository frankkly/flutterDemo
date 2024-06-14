import 'package:flutter/material.dart';
import 'package:flutter22/pages/CheckBox.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import 'package:flutter22/tabs/Tabs.dart';
import 'package:flutter22/pages/Product.dart';
import 'package:flutter22/pages/Login.dart';
import 'package:flutter22/pages/RegisterFirst.dart';
import 'package:flutter22/pages/RegisterSecond.dart';
import 'package:flutter22/pages/RegisterThird.dart';
import 'package:flutter22/pages/AppBarDemo.dart';
import 'package:flutter22/pages/User.dart';
import 'package:flutter22/pages/FloatingActionButtonPage.dart';
import 'package:flutter22/pages/TextField.dart';
import 'package:flutter22/pages/CheckBox.dart';
import 'package:flutter22/pages/Radio.dart';
import 'package:flutter22/pages/FormTable.dart';
import 'package:flutter22/pages/DatePicker.dart';
import 'package:flutter22/pages/Swiper.dart';
import 'package:flutter22/pages/Dialog.dart';
import 'package:flutter22/pages/CustomDialog.dart';
import 'package:flutter22/pages/PostData.dart';
import 'package:flutter22/pages/NewsContent.dart';
import 'package:flutter22/pages/DeviceInfo.dart';
import 'package:flutter22/pages/ImagePicker.dart';

final Map routes = {
  '/':(context,{arguments}) => Tabs(),
  '/form':(context) => FormPage(),
  '/product':(context) => ProductPage(),
  '/search':(context,{arguments}) => SearchPage(arguments:arguments),
  '/login':(context) => LoginPage(),
  '/registerFirst':(context) => RegisterFirstPage(),
  '/registerSecond':(context) => RegisterSecondPage(),
  '/registerThird':(context) => RegisterThirdPage(),
  '/appBarDemo':(context) => TabBarControllerPage(),
  '/user':(context) => UserPage(),
  '/floatingActionButtonPage':(context) => FloatingActionButtonPage(),
  '/textField':(context) => TextFieldPage(),
  '/checkBox':(context) => CheckBoxPage(),
  '/radio':(context) => RadioPage(),
  '/formTable':(context) => FormTablePage(),
  '/datePicker':(context) => DatePickerPage(),
  '/swiper':(context) => SwiperPage(),
  '/dialog':(context) => DialogPage(),
  '/postData':(context) => PostDataPage(),
  '/newsContent':(context,{arguments}) => NewsContentPage(arguments: arguments),
  '/deviceInfo':(context) => DeviceInfoPage(),
  '/imagePicker':(context) => ImagePickerPage(),

};


var onGenerateRoute = (RouteSettings settings){
  final String? name = settings.name;
  final Function pageContentBuilder = routes[name]!;
  if (pageContentBuilder != null){
    if (settings.arguments != null){
      final Route route = MaterialPageRoute(
          builder: (context) =>pageContentBuilder(context,arguments:settings.arguments)
      );
      return route;
    }else{
      final Route route = MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};