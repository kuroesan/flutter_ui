import 'package:flutter/material.dart';
import '../../widgets/titleWidget.dart';
import '../../widgets/subTitleWidget.dart';

class BadgePage extends StatelessWidget {
  BadgePage({Key key, this.title}) : super(key: key);

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
            ],
          ),
        ),
      ),
    );
  }
}
