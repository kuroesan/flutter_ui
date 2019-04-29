import 'package:flutter/material.dart';

class FuButton extends StatefulWidget {
  FuButton(
      {Key key,
      @required this.text,
      this.size = "normal",
      this.type = "default",
      this.color = Colors.blue,
      this.textColor = Colors.white,
      this.shadow = false,
      this.loading = false,
      this.disabled,
      this.onPressed})
      : super(key: key);

  final String text;
  final String size;
  final String type;
  final color;
  final textColor;
  final bool loading;
  final bool shadow;
  final bool disabled;
  final VoidCallback onPressed;

  @override
  State<FuButton> createState() => new _FuButton();
}

class _FuButton extends State<FuButton> {
  Color _disableColor = Colors.black54;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48,
        width: double.infinity,
        child: widget.shadow
            ? RaisedButton(
                color: widget.color,
                textColor: widget.textColor,
                child: Text(widget.text),
                onPressed:
                    widget.disabled == true ? null : () => widget.onPressed())
            : FlatButton(
                color: widget.color,
                disabledColor: _disableColor,
                textColor: widget.textColor,
                child: Text(widget.text),
                onPressed:
                    widget.disabled == true ? null : () => widget.onPressed()));
  }
}
