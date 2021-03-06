import 'package:flutter/material.dart';
import './button.dart';
import './button_row.dart';
import '../util/colors.dart';

class Keyboard extends StatelessWidget {

  final void Function(String) cb;
  Keyboard(this.cb);

  double _calculateHeight(BuildContext context) {
    return MediaQuery.of(context).size.height <= 720 ? 300 : 400;
  }

  @override
  Widget build(BuildContext context) { 

    double height = this._calculateHeight(context);

    return Container(
      height: height.toDouble(),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            ButtonRow([
              Button(value: 'AC', color: ThemeColor.DARK, cb: this.cb),
              Button(value: 'C', color: ThemeColor.DARK, cb: this.cb),
              Button(value: 'DEL', color: ThemeColor.DARK, cb: this.cb),
              Button(value: '/', color: ThemeColor.PRIMARY, cb: this.cb),
            ]),

            ButtonRow([
              Button(value: '7', cb: this.cb),
              Button(value: '8', cb: this.cb),
              Button(value: '9', cb: this.cb),
              Button(value: 'X', color: ThemeColor.PRIMARY, cb: this.cb),
            ]),

            ButtonRow([
              Button(value: '4', cb: this.cb),
              Button(value: '5', cb: this.cb),
              Button(value: '6', cb: this.cb),
              Button(value: '-', color: ThemeColor.PRIMARY, cb: this.cb),
            ]),

            ButtonRow([
              Button(value: '1', cb: this.cb),
              Button(value: '2', cb: this.cb),
              Button(value: '3', cb: this.cb),
              Button(value: '+', color: ThemeColor.PRIMARY, cb: this.cb),
            ]),

            ButtonRow([
              Button(value: '0', cb: this.cb),
              Button(value: ',', cb: this.cb, color: ThemeColor.DARK,),
              // Button(value: ',', cb: this.cb),
              Button(value: '=', big: true, color: ThemeColor.PRIMARY, cb: this.cb),
            ]),
          ],
        ),
      ),
    );
  }
}