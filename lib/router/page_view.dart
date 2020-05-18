import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/compent/base_page.dart';

class PageViewRouter extends StatefulWidget {
  static String routerName = "page_view_router";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PageViewState();
  }
}

class PageViewState extends State {
  List<String> imageUrls = [
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1589735108453&di=96033cf8b94785c09ca917b9c216824d&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201808%2F21%2F20180821124156_vkttd.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1589735142796&di=10704ecb3c4c5af1915238040f2e42ca&imgtype=0&src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201706%2F16%2F160607ho99w6tupnk18k69.png",
    "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3806740765,2854700711&fm=11&gp=0.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1589735206134&di=222c12c7fa10190a6688fd4c9ad56bbd&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201811%2F29%2F20181129150258_8l4QK.thumb.700_0.jpeg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1589735228210&di=5eedeb3479be5e540bfd5fd754fc1c65&imgtype=0&src=http%3A%2F%2Fbbs-fd.zol-img.com.cn%2Ft_s800x5000%2Fg2%2FM00%2F0D%2F05%2FChMlWVW3OiWIQQjDACN33E-8QFgAAHvagA1eGUAI3f0518.jpg"
  ];

  List<Widget> pages;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pages = imageUrls.map((url) {
      return Container(
        padding: EdgeInsets.all(20),
        child: ClipRRect(
          child: Card(
            elevation: 10,
            child: Image.network(
              url,
              fit: BoxFit.fill,
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BasePage(PageView(
      scrollDirection: Axis.horizontal,
      children: pages,
    ));
  }
}
