import 'package:calculadora/util/colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String value;
  final bool big;
  final Color color;
  final void Function(String) cb;

  Button({
    @required this.value,
    @required this.cb,
    this.big = false,
    this.color = ThemeColor.NONE,
  });

  @override
  Widget build(BuildContext build) {
    return Expanded(
      flex: this.big ? 2 : 1,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          child: FlatButton(
            color: this.color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              this.value, 
              style: TextStyle(
                fontSize: 25,
                color: this.color == ThemeColor.DARK ? ThemeColor.PRIMARY: ThemeColor.LIGHT,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w200
              )
            ),
            onPressed: () => this.cb(this.value),
          ),
        ),
      ),
    );
  }
}
