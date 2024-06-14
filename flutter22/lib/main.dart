import 'package:flutter/material.dart';
import 'package:flutter22/pages/Form.dart';
import 'package:flutter22/pages/Search.dart';
import 'res/listData.dart';
import 'tabs/Tabs.dart';
import 'routes/Routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

// 自定义组件

class MyApp extends StatelessWidget {



  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Tabs(),
      // initialRoute: '/postData',
      onGenerateRoute: onGenerateRoute,
      theme: ThemeData(
        ///因为有的组件的默认颜色使用的是 primaryColor，有的用的是primarySwatch，所以必须同时设置
        // primaryColor: Colors.deepOrange,
        colorScheme: const ColorScheme.light().copyWith(primary: Colors.deepOrange),
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate

      ],
      supportedLocales: [
        const Locale("zh","CN"),
        const Locale("en","US"),
      ],

    );
  }
}






