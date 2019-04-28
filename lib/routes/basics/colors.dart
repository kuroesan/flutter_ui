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
                ColorRingList(colorList: [
                  {"ringColor": Colors.white, "name": "white", "isWhite": true},
                  {
                    "ringColor": Colors.white10,
                    "name": "white10",
                    "isWhite": true
                  },
                  {
                    "ringColor": Colors.white12,
                    "name": "white12",
                    "isWhite": true
                  },
                  {
                    "ringColor": Colors.white30,
                    "name": "white30",
                    "isWhite": true
                  },
                  {
                    "ringColor": Colors.white70,
                    "name": "white70",
                    "isWhite": true
                  }
                ], isWhite: true),
                SubTitle(title: "Black"),
                ColorRingList(colorList: [
                  {"ringColor": Colors.black, "name": "black"},
                  {"ringColor": Colors.black12, "name": "black12"},
                  {"ringColor": Colors.black26, "name": "black26"},
                  {"ringColor": Colors.black38, "name": "black38"},
                  {"ringColor": Colors.black45, "name": "black45"},
                  {"ringColor": Colors.black54, "name": "black54"},
                  {"ringColor": Colors.black87, "name": "black87"},
                  {"ringColor": Colors.grey, "name": "grey"}
                ]),
                SubTitle(title: "Yellow"),
                ColorRingList(colorList: [
                  {"ringColor": Colors.amber, "name": "amber"},
                  {"ringColor": Colors.amberAccent, "name": "amberAccent"},
                  {"ringColor": Colors.yellow, "name": "yellow"},
                  {"ringColor": Colors.yellowAccent, "name": "yellowAccent"},
                ]),
                SubTitle(title: "Blue"),
                ColorRingList(colorList: [
                  {"ringColor": Colors.blue, "name": "blue"},
                  {"ringColor": Colors.blueAccent, "name": "blueAccent"},
                  {"ringColor": Colors.cyan, "name": "cyan"},
                  {"ringColor": Colors.cyanAccent, "name": "cyanAccent"},
                  {"ringColor": Colors.indigo, "name": "indigo"},
                  {"ringColor": Colors.indigoAccent, "name": "indigoAccent"},
                  {"ringColor": Colors.lightBlue, "name": "lightBlue"},
                  {
                    "ringColor": Colors.lightBlueAccent,
                    "name": "lightBlueAccent"
                  },
                ]),
                SubTitle(title: "Orange"),
                ColorRingList(colorList: [
                  {"ringColor": Colors.deepOrange, "name": "deepOrange"},
                  {
                    "ringColor": Colors.deepOrangeAccent,
                    "name": "deepOrangeAccent"
                  },
                  {"ringColor": Colors.orange, "name": "orange"},
                  {"ringColor": Colors.orangeAccent, "name": "orangeAccent"},
                ]),
                SubTitle(title: "Purple"),
                ColorRingList(colorList: [
                  {"ringColor": Colors.deepPurple, "name": "deepPurple"},
                  {
                    "ringColor": Colors.deepPurpleAccent,
                    "name": "deepPurpleAccent"
                  },
                  {"ringColor": Colors.purple, "name": "purple"},
                  {"ringColor": Colors.purpleAccent, "name": "purpleAccent"},
                ]),
                SubTitle(title: "Green"),
                ColorRingList(colorList: [
                  {"ringColor": Colors.green, "name": "green"},
                  {"ringColor": Colors.greenAccent, "name": "greenAccent"},
                  {"ringColor": Colors.lightGreen, "name": "lightGreen"},
                  {
                    "ringColor": Colors.lightGreenAccent,
                    "name": "lightGreenAccent"
                  },
                  {"ringColor": Colors.lime, "name": "lime"},
                  {"ringColor": Colors.limeAccent, "name": "limeAccent"},
                  {"ringColor": Colors.teal, "name": "teal"},
                  {"ringColor": Colors.tealAccent, "name": "tealAccent"},
                ]),
                SubTitle(title: "Pink"),
                ColorRingList(colorList: [
                  {"ringColor": Colors.pink, "name": "pink"},
                  {"ringColor": Colors.pinkAccent, "name": "pinkAccent"},
                ]),
                SubTitle(title: "Red"),
                ColorRingList(colorList: [
                  {"ringColor": Colors.red, "name": "red"},
                  {"ringColor": Colors.redAccent, "name": "redAccent"},
                ]),
                SubTitle(title: "Brown"),
                ColorRingList(colorList: [
                  {"ringColor": Colors.brown, "name": "brown"},
                ]),
              ],
            ),
          ),
        ));
  }
}

class ColorRingList extends StatelessWidget {
  ColorRingList({this.colorList, this.isWhite: false});

  final List colorList;
  final bool isWhite;

  @override
  Widget build(BuildContext context) {
    List<Widget> tiles = [];
    for (var item in colorList) {
      if (item["isWhite"] != null && item["isWhite"]) {
        tiles.add(ColorRing(
            ringColor: item["ringColor"],
            name: item["name"],
            isWhite: item["isWhite"] || false));
      } else {
        tiles.add(ColorRing(ringColor: item["ringColor"], name: item["name"]));
      }
    }

    return Container(
      color: isWhite ? Colors.black87 : Colors.white,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      child: Wrap(
        spacing: 28.0,
        runSpacing: 20.0,
        alignment: WrapAlignment.start,
        children: tiles,
      ),
    );
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
          Container(
            width: 90.0,
            child: Text(
              name,
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: isWhite ? Colors.white : Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
