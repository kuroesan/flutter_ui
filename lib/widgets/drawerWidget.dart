import 'package:flutter/material.dart';

class AuthorInfoDrawer extends StatelessWidget {
  AuthorInfoDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16.0),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/flutter_logo.png",
                        width: 80,
                      ),
                    ),
                  ),
                  Text(
                    "dokasan",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
