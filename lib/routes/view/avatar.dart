import 'package:flutter/material.dart';
import 'package:flutter_ui/flutter_ui.dart';
import '../../widgets/titleWidget.dart';
import '../../widgets/subTitleWidget.dart';

class AvatarPage extends StatelessWidget {
  AvatarPage({Key key, this.title}) : super(key: key);

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
              SubTitle(title: "圆形头像"),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: FuAvatar(
                        size: "small",
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: FuAvatar(),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: FuAvatar(
                        size: "large",
                      ),
                    )
                  ],
                ),
              ),
              SubTitle(title: "圆角矩形头像"),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: FuAvatar(size: "small", type: "rect"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: FuAvatar(type: "rect"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: FuAvatar(size: "large", type: "rect"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
