import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GalleryCard extends StatelessWidget {
  CardContent content;

  GalleryCard({this.content});

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Container(
          alignment: Alignment.center,
          height: 300,
          child: Card(
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                      child: Image.network(content.imgUrl),
                    ),
                    Positioned(
                      child: Text(
                        content.title,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      left: 10.0,
                      bottom: 10.0,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                  child: Text(content.sub1),
                ),
                Text(content.sub2),
                Text(content.sub3),
              ],
            ),
          ),
        ),
      );
}

class CardContent {
  String imgUrl;
  String title;
  String sub1;
  String sub2;
  String sub3;
}
