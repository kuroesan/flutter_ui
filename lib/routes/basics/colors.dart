import 'package:flutter/material.dart';
import '../../widgets/titleWidget.dart';

class ColorsPage extends StatefulWidget {
  ColorsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  ColorsPageState createState() => new ColorsPageState();
}

class ColorsPageState extends State<ColorsPage> {
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
                TitleWidget(title: widget.title),
                Container(
                  color: Colors.black87,
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                  child: Wrap(
                    spacing: 28.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      ColorRing(ringColor: Colors.white),
                      ColorRing(ringColor: Colors.white10),
                      ColorRing(ringColor: Colors.white12),
                      ColorRing(ringColor: Colors.white30),
                      ColorRing(ringColor: Colors.white70),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Wrap(
                    spacing: 28.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      ColorRing(ringColor: Colors.black),
                      ColorRing(ringColor: Colors.black12),
                      ColorRing(ringColor: Colors.black26),
                      ColorRing(ringColor: Colors.black38),
                      ColorRing(ringColor: Colors.black45),
                      ColorRing(ringColor: Colors.black54),
                      ColorRing(ringColor: Colors.black87),
                      ColorRing(ringColor: Colors.grey),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Wrap(
                    spacing: 28.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      ColorRing(ringColor: Colors.amber),
                      ColorRing(ringColor: Colors.amberAccent),
                      ColorRing(ringColor: Colors.yellow),
                      ColorRing(ringColor: Colors.yellowAccent),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Wrap(
                    spacing: 28.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      ColorRing(ringColor: Colors.blue),
                      ColorRing(ringColor: Colors.blueAccent),
                      ColorRing(ringColor: Colors.blueGrey),
                      ColorRing(ringColor: Colors.cyan),
                      ColorRing(ringColor: Colors.cyanAccent),
                      ColorRing(ringColor: Colors.indigo),
                      ColorRing(ringColor: Colors.indigoAccent),
                      ColorRing(ringColor: Colors.lightBlue),
                      ColorRing(ringColor: Colors.lightBlueAccent),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Wrap(
                    spacing: 28.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      ColorRing(ringColor: Colors.deepOrange),
                      ColorRing(ringColor: Colors.deepOrangeAccent),
                      ColorRing(ringColor: Colors.orange),
                      ColorRing(ringColor: Colors.orangeAccent),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Wrap(
                    spacing: 28.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      ColorRing(ringColor: Colors.deepPurple),
                      ColorRing(ringColor: Colors.deepPurpleAccent),
                      ColorRing(ringColor: Colors.purple),
                      ColorRing(ringColor: Colors.purpleAccent),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Wrap(
                    spacing: 28.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      ColorRing(ringColor: Colors.green),
                      ColorRing(ringColor: Colors.greenAccent),
                      ColorRing(ringColor: Colors.lightGreen),
                      ColorRing(ringColor: Colors.lightGreenAccent),
                      ColorRing(ringColor: Colors.lime),
                      ColorRing(ringColor: Colors.limeAccent),
                      ColorRing(ringColor: Colors.teal),
                      ColorRing(ringColor: Colors.tealAccent),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Wrap(
                    spacing: 28.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      ColorRing(ringColor: Colors.pink),
                      ColorRing(ringColor: Colors.pinkAccent),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Wrap(
                    spacing: 28.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      ColorRing(ringColor: Colors.red),
                      ColorRing(ringColor: Colors.redAccent),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Wrap(
                    spacing: 28.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      ColorRing(ringColor: Colors.brown),
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
  ColorRing({this.ringColor});

  final ringColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.0,
      height: 90.0,
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
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(50.0),
                )),
          ),
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: ringColor,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(50.0),
                )),
          )
        ],
      ),
    );
  }
}
