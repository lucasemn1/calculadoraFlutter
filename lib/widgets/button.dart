import 'package:flutter/material.dart';
import '../util/colors.dart';

class Button extends StatelessWidget {
  final String value;
  final bool big;
  final Color color;
  final void Function(String) cb;

  Button({
    @required this.value, 
    @required this.cb,
    this.big = false,
    this.color = ThemeColor.GREY,
  });

  @override
  Widget build(BuildContext build) {
    return Expanded(
      flex: this.big ? 2 : 1,
      child: Container(
        margin: const EdgeInsets.only(top: 1, right: 1),
        child: RaisedButton(
          color: this.color,
          child: Text(
            this.value, 
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            )
          ),
          onPressed: () => this.cb(this.value),
        )
      )
    );
  }
}