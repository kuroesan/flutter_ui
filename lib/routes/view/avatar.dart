import 'package:flutter/material.dart';
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
                      child: FUAvatar(
                        size: "small",
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: FUAvatar(),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: FUAvatar(
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
                      child: FUAvatar(size: "small", type: "rect"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: FUAvatar(type: "rect"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: FUAvatar(size: "large", type: "rect"),
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

class FUAvatar extends StatelessWidget {
  FUAvatar(
      {this.size = "default",
      this.type = "circle",
      this.image = "assets/images/flutter_logo_bg.png"});
  final String size;
  final String type;
  final String image;

  @override
  Widget build(BuildContext context) {
    var avatarWidth = 72.0;
    if (this.size == "small") {
      avatarWidth = 58.0;
    } else if (this.size == "large") {
      avatarWidth = 84.0;
    } else {
      avatarWidth = 72.0;
    }

    return this.type == "circle"
        ? ClipOval(
            child: Container(
              child: Image.asset(
                this.image,
                width: avatarWidth,
              ),
            ),
          )
        : ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Image.asset(
              this.image,
              width: avatarWidth,
            ),
          );
  }
}
