import 'package:flutter/material.dart';
import 'package:flutter_ui/flutter_ui.dart';
import '../../widgets/titleWidget.dart';
import '../../widgets/subTitleWidget.dart';

class ButtonsPage extends StatelessWidget {
  ButtonsPage({Key key, this.title}) : super(key: key);

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
              SubTitle(title: "Primary Button"),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: FuButton(
                  text: "Primary Button",
                  shadow: true,
                  size: "small",
                  disabled: true,
                ),
              ),
              SubTitle(title: "RaisedButton"),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: RaisedButton(
                        child: Text("normal"),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: RaisedButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("color"),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: RaisedButton(
                        child: Text("disabled"),
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
              ),
              SubTitle(title: "FlatButton"),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: FlatButton(
                        child: Text("normal"),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: FlatButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("color"),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: FlatButton(
                        child: Text("disabled"),
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
              ),
              SubTitle(title: "OutlineButton"),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: OutlineButton(
                        child: Text("normal"),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: OutlineButton(
                        color: Colors.blue,
                        textColor: Colors.blue,
                        child: Text("color"),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: OutlineButton(
                        child: Text("disabled"),
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
              ),
              SubTitle(title: "IconButton"),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: IconButton(
                        icon: Icon(Icons.thumb_up),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: IconButton(
                        color: Colors.blue,
                        icon: Icon(Icons.thumb_up),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: IconButton(
                        icon: Icon(Icons.thumb_up),
                        onPressed: null,
                      ),
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
