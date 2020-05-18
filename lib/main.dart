import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/compent/base_page.dart';
import 'package:flutterdemo/router/layout_ink_and_card.dart';
import 'package:flutterdemo/router/listview_top_view.dart';
import 'package:flutterdemo/router/page_view.dart';
import 'package:flutterdemo/router/refresh_list_view.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: createRouterMap(),
      home: BasePage(MainListRouter()),
    );
  }

  Map<String, WidgetBuilder> createRouterMap() {
    Map<String, WidgetBuilder> routersMap = Map();
    routersMap[ListViewTopView.routerName] = (context) {
      return ListViewTopView();
    };

    routersMap[RefreshListViewRouter.routerName] = (context) {
      return RefreshListViewRouter();
    };

    routersMap[PageViewRouter.routerName] = (context) {
      return PageViewRouter();
    };

    routersMap[InkAndCardLayoutRouter.routerName] = (context) {
      return InkAndCardLayoutRouter();
    };
    return routersMap;
  }
}

class MainListRouter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainSate();
  }
}

class MainSate extends State {
  List<Title> titleList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    titleList = new List();
    titleList.add(Title("ListViewtopView", new Icon(Icons.border_top),
        ListViewTopView.routerName));

    titleList.add(Title("RefreshListView", new Icon(Icons.refresh),
        RefreshListViewRouter.routerName));

    titleList.add(
        Title("PageView", new Icon(Icons.pages), PageViewRouter.routerName));

    titleList.add(Title("InkAndCard", new Icon(Icons.card_giftcard),
        InkAndCardLayoutRouter.routerName));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemBuilder: (context, index) {
        Title title = titleList[index];
        return GestureDetector(
          onTap: () {
            if (title.routerName != "") {
              Navigator.of(context).pushNamed(title.routerName);
            }
          },
          child: ListTile(
            leading: title.icon,
            title: Text(title.title),
          ),
        );
      },
      itemCount: titleList.length,
    );
  }
}

class Title {
  String title;
  Icon icon;
  String routerName;

  Title(this.title, this.icon, this.routerName);
}
