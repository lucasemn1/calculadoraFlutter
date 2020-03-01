import 'package:calculadora/screens/information.dart';
import 'package:calculadora/util/colors.dart';
import 'package:calculadora/widgets/text_about.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Topbar extends StatelessWidget {
  void openAboutScreen(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Informacoes()));
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Calculadora com Flutter'),
      backgroundColor: ThemeColor.DARK,
      actions: <Widget>[
        IconButton(
          icon: Icon(FontAwesomeIcons.questionCircle, color: ThemeColor.LIGHT,),
          iconSize: 20,
          onPressed: () => this.openAboutScreen(context),
        )
      ],
    );
  }
}
