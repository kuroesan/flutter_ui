import 'package:flutter/material.dart';
import '../../widgets/titleWidget.dart';
import '../../widgets/subTitleWidget.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({Key key, this.title}) : super(key: key);

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
            padding: EdgeInsets.all(0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TitleWidget(title: title),
                SubTitle(title: "White"),
                Container(
                  color: Colors.black87,
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                  child: Wrap(
                    spacing: 28.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      ColorRing(
                          ringColor: Colors.white,
                          name: "white",
                          isWhite: true),
                      ColorRing(
                          ringColor: Colors.white10,
                          name: "white10",
                          isWhite: true),
                      ColorRing(
                          ringColor: Colors.white12,
                          name: "white12",
                          isWhite: true),
                      ColorRing(
                          ringColor: Colors.white30,
                          name: "white30",
                          isWhite: true),
                      ColorRing(
                          ringColor: Colors.white70,
                          name: "white70",
                          isWhite: true),
                    ],
                  ),
                ),
                SubTitle(title: "Black"),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Wrap(
                    spacing: 28.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      ColorRing(ringColor: Colors.black, name: "black"),
                      ColorRing(ringColor: Colors.black12, name: "black12"),
                      ColorRing(ringColor: Colors.black26, name: "black26"),
                      ColorRing(ringColor: Colors.black38, name: "black38"),
                      ColorRing(ringColor: Colors.black45, name: "black45"),
                      ColorRing(ringColor: Colors.black54, name: "black54"),
                      ColorRing(ringColor: Colors.black87, name: "black87"),
                      ColorRing(ringColor: Colors.grey, name: "grey"),
                    ],
                  ),
                ),
                SubTitle(title: "Yellow"),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Wrap(
                    spacing: 28.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      ColorRing(ringColor: Colors.amber, name: "amber"),
                      ColorRing(
                          ringColor: Colors.amberAccent, name: "amberAccent"),
                      ColorRing(ringColor: Colors.yellow, name: "yellow"),
                      ColorRing(
                          ringColor: Colors.yellowAccent, name: "yellowAccent"),
                    ],
                  ),
                ),
                SubTitle(title: "Blue"),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Wrap(
                    spacing: 28.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      ColorRing(ringColor: Colors.blue, name: "blue"),
                      ColorRing(
                          ringColor: Colors.blueAccent, name: "blueAccent"),
                      ColorRing(ringColor: Colors.blueGrey, name: "blueGrey"),
                      ColorRing(ringColor: Colors.cyan, name: "cyan"),
                      ColorRing(
                          ringColor: Colors.cyanAccent, name: "cyanAccent"),
                      ColorRing(ringColor: Colors.indigo, name: "indigo"),
                      ColorRing(
                          ringColor: Colors.indigoAccent, name: "indigoAccent"),
                      ColorRing(ringColor: Colors.lightBlue, name: "lightBlue"),
                      ColorRing(
                          ringColor: Colors.lightBlueAccent,
                          name: "lightBlueAccent"),
                    ],
                  ),
                ),
                SubTitle(title: "Orange"),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Wrap(
                    spacing: 28.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      ColorRing(
                          ringColor: Colors.deepOrange, name: "deepOrange"),
                      ColorRing(
                          ringColor: Colors.deepOrangeAccent,
                          name: "deepOrangeAccent"),
                      ColorRing(ringColor: Colors.orange, name: "orange"),
                      ColorRing(
                          ringColor: Colors.orangeAccent, name: "orangeAccent"),
                    ],
                  ),
                ),
                SubTitle(title: "Purple"),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Wrap(
                    spacing: 28.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      ColorRing(
                          ringColor: Colors.deepPurple, name: "deepPurple"),
                      ColorRing(
                          ringColor: Colors.deepPurpleAccent,
                          name: "bldeepPurpleAccentack"),
                      ColorRing(ringColor: Colors.purple, name: "purple"),
                      ColorRing(
                          ringColor: Colors.purpleAccent, name: "purpleAccent"),
                    ],
                  ),
                ),
                SubTitle(title: "Green"),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Wrap(
                    spacing: 28.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      ColorRing(ringColor: Colors.green, name: "green"),
                      ColorRing(
                          ringColor: Colors.greenAccent, name: "greenAccent"),
                      ColorRing(
                          ringColor: Colors.lightGreen, name: "lightGreen"),
                      ColorRing(
                          ringColor: Colors.lightGreenAccent,
                          name: "lightGreenAccent"),
                      ColorRing(ringColor: Colors.lime, name: "lime"),
                      ColorRing(
                          ringColor: Colors.limeAccent, name: "limeAccent"),
                      ColorRing(ringColor: Colors.teal, name: "teal"),
                      ColorRing(
                          ringColor: Colors.tealAccent, name: "tealAccent"),
                    ],
                  ),
                ),
                SubTitle(title: "Pink"),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Wrap(
                    spacing: 28.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      ColorRing(ringColor: Colors.pink, name: "pink"),
                      ColorRing(
                          ringColor: Colors.pinkAccent, name: "pinkAccent"),
                    ],
                  ),
                ),
                SubTitle(title: "Red"),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Wrap(
                    spacing: 28.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      ColorRing(ringColor: Colors.red, name: "red"),
                      ColorRing(ringColor: Colors.redAccent, name: "redAccent"),
                    ],
                  ),
                ),
                SubTitle(title: "Brown"),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Wrap(
                    spacing: 28.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      ColorRing(ringColor: Colors.brown, name: "brown"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class ColorRing extends StatelessWidget {
  ColorRing({this.ringColor, this.name, this.isWhite = false});

  final ringColor;
  final String name;
  final bool isWhite;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: 90.0,
            height: 90.0,
            margin: EdgeInsets.only(bottom: 12.0),
            decoration: BoxDecoration(
                color: ringColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(50.0),
                )),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                      color: isWhite ? Colors.black87 : Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      )),
                ),
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: isWhite ? Colors.black87 : Colors.white,
                      border: Border.all(
                        color: ringColor,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      )),
                )
              ],
            ),
          ),
          Text(
            name,
            style: TextStyle(
              color: isWhite ? Colors.white : Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
