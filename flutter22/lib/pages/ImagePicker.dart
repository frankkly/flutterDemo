import 'dart:collection';
import 'dart:io';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class ImagePickerPage extends StatefulWidget {
  const ImagePickerPage({super.key});

  @override
  State<ImagePickerPage> createState() => _ImagePickerPageState();
}

class _ImagePickerPageState extends State<ImagePickerPage> {
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("图片选择"),
      ),
      body: ListView(
        children: [
          ElevatedButton(
              onPressed: () {
                _pickerShow();
              },
              child: Text("选择图片")
          ),
          ElevatedButton(
              onPressed: () {
                _cameraShow();
              },
              child: Text("拍照")
          ),
          _image != null?Image.file(_image!):Text("请选择图片"),
          ElevatedButton(
              onPressed: () {
                _uploadImage();
              },
              child: Text("上传")
          ),
        ],
      ),
    );
  }
  _pickerShow()async{
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery,maxWidth: 400);
    if(image != null){
      setState(() {
        _image = File(image.path);
      });
    }
  }
  _cameraShow() async {
    ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);

    if(image != null){
      setState(() {
        _image = File(image.path);
      });
    }
  }

  Widget _buildImage(imageUrl){
    if (imageUrl == null){
      return Text("请选择图片");
    }else{
      return imageUrl;
    }
  }

  _uploadImage() async {
    print(_image!.path);
    FormData formData = FormData.fromMap({
      "name":"frankkly",
      "age":21,
      "file": await MultipartFile.fromFile(_image!.path,filename: "myMiange.png")
    });
    final response = await Dio().post("d",data: formData);
    print(response.statusCode);
  }

}


