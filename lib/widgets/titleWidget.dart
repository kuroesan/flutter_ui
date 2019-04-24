import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  TitleWidget({this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color.fromRGBO(248, 248, 248, 1),
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 66.0,
            height: 3.0,
            margin: EdgeInsets.only(top: 12.0),
            color: Color.fromRGBO(76, 130, 230, 1),
          )
        ],
      ),
    );
  }
}
