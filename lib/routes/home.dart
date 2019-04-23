import 'package:flutter/material.dart';
import 'list.dart';
import 'basics/colors.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        backgroundColor: Color.fromRGBO(248, 248, 248, 1),
        body: ListView(
          padding: EdgeInsets.all(17.0),
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 0.0),
              child: Column(
                children: <Widget>[
                  FlutterLogo(size: 88.0),
                  Text(
                    'Flutter UI',
                    style: TextStyle(fontSize: 20.0, height: 2),
                  )
                ],
              ),
            ),
            _buildMenuList(),
          ],
        ));
  }

  Widget _buildMenuList() {
    List menuList = [
      {
        "icon": Icons.translate,
        "title": "基础",
        "subtitle": "包含颜色、文本、图标等",
        "subMenuList": [
          {
            "title": "Color 颜色",
            "route": new ColorsPage(
              title: "Color 颜色",
            )
          },
          {"title": "Icon 图标"},
          {"title": "Font 字体"},
          {"title": "Button 按钮"}
        ]
      },
      {
        "icon": Icons.dashboard,
        "title": "视图",
        "subtitle": "包含通告栏、标签、徽标等",
        "subMenuList": [
          {"title": "Avatar 头像"},
          {"title": "Article 文章"},
          {"title": "Badge 徽标"},
          {"title": "CountDown 倒计时"},
          {"title": "Curtain 幕帘"},
          {"title": "Divider 分割线"},
          {"title": "NoticeBar 通告栏"},
          {"title": "Tag 标签"},
          {"title": "Timeline 时间轴"},
          {"title": "Swiper 滑块视图容器"},
          {"title": "Load-More 页面提示"},
          {"title": "Steps 步骤条"},
        ]
      },
      {
        "icon": Icons.touch_app,
        "title": "操作反馈",
        "subtitle": "包含对话框、进度条、动作面板等",
        "subMenuList": [
          {"title": "Action-Sheet 动作面板"},
          {"title": "Activity-Indicator 活动指示器"},
          {"title": "Modal 模态框"},
          {"title": "Progress 进度条"},
          {"title": "Toast 轻提示"},
          {"title": "Swipe-Action 滑动操作"},
          {"title": "Message 消息通知"}
        ]
      },
      {
        "icon": Icons.assignment,
        "title": "表单",
        "subtitle": "包含输入框、单选框、复选框等",
        "subMenuList": [
          {"title": "Input 输入框"},
          {"title": "Radio 单选框"},
          {"title": "Checkbox 复选框"},
          {"title": "Switch 开关"},
          {"title": "Rate 评分"},
          {"title": "Input-Number 数字输入框"},
          {"title": "Textarea 多行文本框"},
          {"title": "Picker 选择器"},
          {"title": "Picker-View 滚动选择器"},
          {"title": "Slider 滑动条"},
          {"title": "Search-Bar 搜索栏"},
          {"title": "Image-Picker 图片选择器"},
          {"title": "Range 范围选择器"},
        ]
      },
      {
        "icon": Icons.web,
        "title": "布局",
        "subtitle": "包含列表、浮层、卡片等",
        "subMenuList": [
          {"title": "Color 弹性布局"},
          {"title": "Color 栅格"},
          {"title": "Color 列表"},
          {"title": "Color 卡片"},
          {"title": "Color 浮动弹层"},
          {"title": "Color 手风琴"},
        ]
      },
      {
        "icon": Icons.view_carousel,
        "title": "导航",
        "subtitle": "包含标签栏、导航栏、分段器等",
        "subMenuList": [
          {"title": "NavBar 导航栏"},
          {"title": "TabBar 标签栏"},
          {"title": "Tabs 标签页"},
          {"title": "Segmented-Control 分段器"},
          {"title": "Pagination 分页器"},
          {"title": "Drawer 抽屉"},
          {"title": "Indexes 索引选择器"},
        ]
      },
      {
        "icon": Icons.calendar_today,
        "title": "高阶组件",
        "subtitle": "包含日历等",
        "subMenuList": [
          {"title": "Calendar 日历"},
        ]
      },
    ];
    List<Widget> tiles = [];
    for (var item in menuList) {
      tiles.add(_buildListItem(
          item["icon"], item["title"], item["subtitle"], item["subMenuList"]));
    }
    return Column(children: tiles);
  }

  Widget _buildListItem(
      IconData icon, String title, String subtitle, List subMenuList) {
    return GestureDetector(
        child: Container(
          padding: EdgeInsets.all(0.0),
          margin: EdgeInsets.only(bottom: 22.0),
          height: 72.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(1.0, 1.0),
                    blurRadius: 4.0)
              ]),
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(6.0),
                margin: EdgeInsets.only(left: 17.0),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 2.0, color: Color.fromRGBO(233, 241, 254, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Icon(
                  icon,
                  color: Color.fromRGBO(120, 164, 251, 1),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 17.0),
                  padding: EdgeInsets.only(top: 13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(title,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          )),
                      new Text(subtitle,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 14.0,
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                margin: EdgeInsets.only(right: 17.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(120, 165, 250, 1),
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(120, 165, 250, .6),
                        offset: Offset(1.0, 1.0),
                        blurRadius: 4.0)
                  ],
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 14.0,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return ListPage(title: title, icon: icon, subMenuList: subMenuList);
          }));
        });
  }
}
