import 'package:flutter/material.dart';
import '../utils/ScreenUtil.dart';

class FuAvatar extends StatelessWidget {
  FuAvatar(
      {this.size = "default",
      this.type = "circle",
      this.image = "assets/images/flutter_logo_bg.png"});
  final String size;
  final String type;
  final String image;

  @override
  Widget build(BuildContext context) {
    var avatarWidth;
    if (this.size == "small") {
      avatarWidth = ScreenUtil.px(116.0);
    } else if (this.size == "large") {
      avatarWidth = ScreenUtil.px(168.0);
    } else {
      avatarWidth = ScreenUtil.px(144.0);
    }

    return this.type == "circle"
        ? ClipOval(
            child: Container(
              child: Image.asset(
                this.image,
                width: avatarWidth,
              ),
            ),
          )
        : ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Image.asset(
              this.image,
              width: avatarWidth,
            ),
          );
  }
}
