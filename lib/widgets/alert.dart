
import 'package:flutter/material.dart';

class Alert {
  static AlertDialog _makeAlert(String title, String text){
    return AlertDialog(
      title: Text(title),
      content: Text(text),
      actions: <Widget>[
        FlatButton(
          child: Text('Ok'), onPressed: () {},
        )
      ],
    );
  }

  static void alert(BuildContext context, String title, String text){
    showDialog(
      context: context,
      builder: (_) => _makeAlert(title, text),
    );
  }
}