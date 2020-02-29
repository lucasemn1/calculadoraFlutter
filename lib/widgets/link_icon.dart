import 'package:calculadora/widgets/text_about.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:link/link.dart';

class LinkIcon extends StatelessWidget {
  static const FONT_SIZE = 22.0;
  final IconData icon;
  final String text;
  final String link;

  LinkIcon({
    @required this.icon, 
    @required this.text,
    this.link
  });

  @override
  Widget build(BuildContext context) {
    return Link( 
      url: this.link,
      onError: () { print('Deu erro'); },
      child: Row(
        children: <Widget>[
          IconButton(
            icon: FaIcon(this.icon),
            onPressed: () {},
            iconSize: FONT_SIZE,
          ),
          TextAbout(text: this.text, size: FONT_SIZE.toInt())
        ]
      )
    );
  }
}
