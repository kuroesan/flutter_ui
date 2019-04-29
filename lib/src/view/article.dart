import 'package:flutter/material.dart';
import '../utils/ScreenUtil.dart';

class FuArticle extends StatelessWidget {
  FuArticle({this.type = "h1", this.text, this.image});

  // param: type
  // h1: 一级标题
  // h2: 二级标题
  // h3: 三级标题
  // info: 作者信息
  // p: 段落
  // img: 图片
  final String type;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    Widget article;
    switch (type) {
      case "h1":
        article = Container(
          child: this.text != null
              ? Text(
                  this.text,
                  style: TextStyle(
                    fontSize: ScreenUtil.px(42),
                  ),
                )
              : "",
        );
        break;
      case "h2":
        article = Container(
          child: this.text != null
              ? Text(
                  this.text,
                  style: TextStyle(
                    fontSize: ScreenUtil.px(36),
                  ),
                )
              : "",
        );
        break;
      case "h3":
        article = Container(
          child: this.text != null
              ? Text(
                  this.text,
                  style: TextStyle(
                    fontSize: ScreenUtil.px(28),
                  ),
                )
              : "",
        );
        break;
      case "info":
        article = Container(
          child: this.text != null
              ? Text(
                  this.text,
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: ScreenUtil.px(26),
                  ),
                )
              : "",
        );
        break;
      case "p":
        article = Container(
          child: this.text != null
              ? Text(
                  this.text,
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: ScreenUtil.px(26),
                  ),
                )
              : "",
        );
        break;
      case "img":
        article = Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Image.asset(this.image),
        );
        break;
      default:
    }

    return article;
  }
}
