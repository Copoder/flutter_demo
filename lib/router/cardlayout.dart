import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/compent/base_page.dart';
import 'package:flutterdemo/compent/gallery_card.dart';

class LayoutRouter extends StatefulWidget {
  static String routerName = "layout_router";

  @override
  State<StatefulWidget> createState() {
    return LayoutState();
  }
}

class LayoutState extends State {
  List<CardContent> datas = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < 10; i++) {
      CardContent cardContent = CardContent();
      cardContent.imgUrl =
          "http://d.hiphotos.baidu.com/zhidao/pic/item/6a63f6246b600c334c3e91cb1e4c510fd9f9a16a.jpg";
      cardContent.title = "title$i";
      cardContent.sub1 = "sub$i";
      cardContent.sub2 = "sub$i";
      cardContent.sub3 = "sub$i";
      datas.add(cardContent);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return GalleryCard(content: datas[index]);
      },itemCount: datas.length,),
    );
  }
}
