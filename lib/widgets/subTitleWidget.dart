import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  SubTitle({this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 15.0),
            width: 3.0,
            height: 20.0,
            color: Color.fromRGBO(76, 130, 230, 1),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
