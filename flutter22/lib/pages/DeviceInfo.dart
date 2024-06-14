
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'dart:io';

class DeviceInfoPage extends StatefulWidget {
  const DeviceInfoPage({super.key});

  @override
  State<DeviceInfoPage> createState() => _DeviceInfoPageState();
}

class _DeviceInfoPageState extends State<DeviceInfoPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getDeviceInfo();
  }

  _getDeviceInfo() async {


    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    print('Running on ${iosInfo.utsname.machine}');  // e.g. "iPod7,1"
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("设备信息/地理位置"),
      ),
      body: Container(
        child: Text("dfffff"),
      ),
    ) ;
  }
}


