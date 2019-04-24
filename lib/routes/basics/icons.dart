import 'package:flutter/material.dart';
import '../../model/myIcons.dart';
import '../../widgets/titleWidget.dart';
import '../../widgets/subTitleWidget.dart';

class IconsPage extends StatelessWidget {
  IconsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter UI'),
      ),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TitleWidget(title: title),
              SubTitle(title: "Material 图标"),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Wrap(
                  spacing: 35.0,
                  runSpacing: 20.0,
                  alignment: WrapAlignment.start,
                  children: <Widget>[
                    IconItem(icon: Icons.home, name: "home"),
                    IconItem(
                        icon: Icons.account_circle, name: "account_circle"),
                    IconItem(icon: Icons.done, name: "done"),
                    IconItem(icon: Icons.perm_identity, name: "perm_identity"),
                    IconItem(icon: Icons.settings, name: "settings"),
                    IconItem(icon: Icons.translate, name: "translate"),
                    IconItem(icon: Icons.dashboard, name: "dashboard"),
                    IconItem(icon: Icons.touch_app, name: "touch_app"),
                    IconItem(icon: Icons.assignment, name: "assignment"),
                    IconItem(icon: Icons.web, name: "web"),
                    IconItem(icon: Icons.view_carousel, name: "view_carousel"),
                    IconItem(
                        icon: Icons.calendar_today, name: "calendar_today"),
                    IconItem(icon: Icons.more_horiz, name: "more_horiz"),
                  ],
                ),
              ),
              SubTitle(title: "自定义字体图标"),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Wrap(
                  spacing: 35.0,
                  runSpacing: 20.0,
                  alignment: WrapAlignment.start,
                  children: <Widget>[
                    IconItem(icon: MyIcons.home, name: "home"),
                    IconItem(icon: MyIcons.shop, name: "shop"),
                    IconItem(icon: MyIcons.wallet, name: "wallet"),
                    IconItem(icon: MyIcons.arrow_down, name: "arrow_down"),
                    IconItem(icon: MyIcons.arrow_right, name: "arrow_right"),
                    IconItem(icon: MyIcons.download, name: "download"),
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

class IconItem extends StatelessWidget {
  IconItem({this.icon, this.name});

  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 80.0,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            child: Icon(
              icon,
              size: 32.0,
              color: Colors.black45,
            ),
          ),
          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black45,
              fontSize: 14.0,
            ),
          )
        ],
      ),
    );
  }
}
