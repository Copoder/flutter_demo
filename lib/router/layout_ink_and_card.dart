import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/compent/base_page.dart';

class InkAndCardLayoutRouter extends StatelessWidget {
  static String routerName = "ink_and_cardlayout_router";
  List<CardData> datas;

  InkAndCardLayoutRouter() {
    datas = List();
    datas.add(CardData(
        title: "title",
        imageUrl:
            "http://attach.bbs.miui.com/forum/201408/07/194456i55q58pqnb55fi88.jpg",
        description: "this is description"));

    datas.add(CardData(
        title: "title",
        imageUrl:
            "http://attach.bbs.miui.com/forum/201408/07/194456i55q58pqnb55fi88.jpg",
        description: "this is description"));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BasePage(ListView(
      padding: EdgeInsets.only(bottom: 10),
      children: datas.map((data) {
        return CardLayout(card: data);
      }).toList(),
    ));
  }
}

class CardData {
  String title;
  String imageUrl;
  String description;

  CardData({this.title, this.imageUrl, this.description});
}

class CardLayout extends StatefulWidget {
  CardData card;

  CardLayout({this.card});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CardLayoutState(card: card);
  }
}

class CardLayoutState extends State {
  CardData card;

  CardLayoutState({this.card});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Padding(
        child:
        InkWell(
          onTap: () {},
          splashColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
          // Generally, material cards do not have a highlight overlay.
          highlightColor: Colors.transparent,
          child: Column(
            children: <Widget>[
              Text(card.title),
              SizedBox(
                height: 180,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                        child: Ink.image(image: NetworkImage(card.imageUrl))),
                    Positioned(
                      bottom: 8,
                      right: 24,
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          card.description,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );

  }
}
