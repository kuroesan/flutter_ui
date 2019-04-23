import 'package:flutter/material.dart';

class BasicsPage extends StatefulWidget {
  BasicsPage({Key key}) : super(key: key);

  @override
  BasicsPageState createState() => new BasicsPageState();
}

class BasicsPageState extends State<BasicsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter UI'),
        ),
        body: Center(
          child: Text('basics'),
        ));
  }
}
