import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title, this.icon, this.subMenuList})
      : super(key: key);

  final String title;
  final IconData icon;
  final List subMenuList;

  @override
  ListPageState createState() => new ListPageState();
}

class ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter UI'),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            color: Color.fromRGBO(248, 248, 248, 1),
            padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 30.0),
            child: Row(
              children: <Widget>[
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1.0, 1.0),
                            blurRadius: 4.0)
                      ]),
                  child: Icon(
                    widget.icon,
                    size: 18.0,
                    color: Color.fromRGBO(120, 164, 251, 1),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 24.0),
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromRGBO(115, 162, 248, 1),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          _buildSubMenuList(),
        ],
      ),
    );
  }

  Widget _buildSubMenuList() {
    List<Widget> tiles = [];
    for (var item in widget.subMenuList) {
      tiles.add(_buildSubMenuItem(item["title"], item["route"]));
    }
    return Column(children: tiles);
  }

  Widget _buildSubMenuItem(String title, Widget route) {
    return Container(
      padding: EdgeInsets.all(0.0),
      margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
          color: Colors.black12,
        )),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
        title: Text(title),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16.0,
        ),
        onTap: () {
          if (route != null) {
            Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (BuildContext context,
                      Animation<double> animation,
                      Animation<double> secondaryAnimation) {
                    return route;
                  },
                  transitionsBuilder: (
                    BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child,
                  ) {
                    return ListPageState.createTransition(animation, child);
                  },
                ));
          }
        },
      ),
    );
  }

  static SlideTransition createTransition(
      Animation<double> animation, Widget child) {
    return new SlideTransition(
      position: new Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: const Offset(0.0, 0.0),
      ).animate(animation),
      child: child,
    );
  }
}
