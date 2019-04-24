import 'package:flutter/material.dart';
import '../../widgets/titleWidget.dart';

class ButtonsPage extends StatefulWidget {
  ButtonsPage({Key key, this.title});

  final String title;

  @override
  ButtonsPageState createState() => new ButtonsPageState();
}

class ButtonsPageState extends State<ButtonsPage> {
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
              TitleWidget(title: widget.title),
            ],
          ),
        ),
      ),
    );
  }
}
