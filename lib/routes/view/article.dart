import 'package:flutter/material.dart';
import 'package:flutter_ui/flutter_ui.dart';
import '../../widgets/titleWidget.dart';
import '../../widgets/subTitleWidget.dart';

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
                    FuArticle(type: "h1", text: "这是一级标题这是一级标题"),
                    FuArticle(type: "info", text: "2017-05-07    这是作者"),
                    FuArticle(type: "h2", text: "这是二级标题"),
                    FuArticle(type: "h3", text: "这是三级标题"),
                    FuArticle(
                        type: "p",
                        text:
                            "这是文本段落。这是文本段落。这是文本段落。这是文本段落。这是文本段落。这是文本段落。这是文本段落。这是文本落。这是文本段落。"),
                    FuArticle(
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
