import 'package:flutter/material.dart';
import '../../widgets/titleWidget.dart';
import '../../widgets/subTitleWidget.dart';
import '../../utils/ScreenUtil.dart';

class ArticlePage extends StatelessWidget {
  ArticlePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI"),
      ),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TitleWidget(title: title),
              SubTitle(title: "示例"),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FUArticle(type: "h1", text: "这是一级标题这是一级标题"),
                    FUArticle(type: "info", text: "2017-05-07    这是作者"),
                    FUArticle(type: "h2", text: "这是二级标题"),
                    FUArticle(type: "h3", text: "这是三级标题"),
                    FUArticle(
                        type: "p",
                        text:
                            "这是文本段落。这是文本段落。这是文本段落。这是文本段落。这是文本段落。这是文本段落。这是文本段落。这是文本落。这是文本段落。"),
                    FUArticle(
                        type: "img",
                        image: "assets/images/flutter_logo_bg.png"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FUArticle extends StatelessWidget {
  FUArticle({this.type = "h1", this.text, this.image});

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
