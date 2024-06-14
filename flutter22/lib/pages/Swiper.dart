import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class SwiperPage extends StatefulWidget {
  const SwiperPage({super.key});

  @override
  State<SwiperPage> createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  List <Image> imageList = [
    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT06Rv2_szT9u5TRLPadRIm8uenbO7Md2YE70MPipRPw&s",fit: BoxFit.fitWidth,),
    Image.network("https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_1280.jpg",fit: BoxFit.fitWidth,),
    Image.network("https://pic.3gbizhi.com/uploads/20240321/a43e2f9b8718f37a2d627241611cc0c8.png",fit: BoxFit.fitWidth,),
    Image.network("https://st-gdx.dancf.com/gaodingx/1942/articles/0/20201117-162506-7b5e.png",fit: BoxFit.fitWidth,),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("轮播"),
      ),
      body: ListView(
        children: [
          Container(
            height: 400,
            child: AspectRatio(
              aspectRatio: 16/9,
              child: Swiper(
                itemBuilder:  (BuildContext context,int index){
                  return imageList[index];
                },
                itemCount: imageList.length,
                pagination: SwiperPagination(),// 配置底部分页器
                control: SwiperControl(color: Colors.green,disableColor: Colors.orangeAccent),// 配置左右的箭头
                autoplay: true,

              ),

            ),
          ),

          Text("我是文本"),
          Container(
            height: 200,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return new Image.network(
                  "http://via.placeholder.com/288x188",
                  fit: BoxFit.fill,
                );
              },
              itemCount: 10,
              viewportFraction: 0.8,
              scale: 0.9,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return new Image.network(
                  "http://via.placeholder.com/288x188",
                  fit: BoxFit.fill,
                );
              },
              itemCount: 10,
              itemWidth: 300.0,
              layout: SwiperLayout.STACK,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 400,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return new Image.network(
                  "http://via.placeholder.com/288x188",
                  fit: BoxFit.fill,
                );
              },
              itemCount: 10,
              itemWidth: 300.0,
              itemHeight: 400.0,
              layout: SwiperLayout.TINDER,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 300,
            child: Swiper(
                layout: SwiperLayout.CUSTOM,
                customLayoutOption: new CustomLayoutOption(
                    startIndex: -1,
                    stateCount: 3
                ).addRotate([
                  -45.0/180,
                  0.0,
                  45.0/180
                ]).addTranslate([
                  new Offset(-370.0, -40.0),
                  new Offset(0.0, 0.0),
                  new Offset(370.0, -40.0)
                ]),
                itemWidth: 300.0,
                itemHeight: 200.0,
                itemBuilder: (context, index) {
                  return new Container(
                    color: Colors.grey,
                    child: new Center(
                      child: new Text("$index"),
                    ),
                  );
                },
                itemCount: 10)
            ,
          )
        ],
      ),
    );
  }
}


