import 'package:calculadora/util/colors.dart';
import 'package:calculadora/widgets/text_about.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:calculadora/widgets/link_icon.dart';

class Informacoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sobre'),
          backgroundColor: ThemeColor.GREY,
        ),
        body: Container(
          color: ThemeColor.LIGHT,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(children: <Widget>[
              TextAbout(
                  text:
                      'Desenvolvido por: \n Lucas Emanuel Nascimento Nóbrega Dias',
                  size: 17,
                  bold: true,
                  center: true),

              Container(
                margin: EdgeInsets.only(top: 30, bottom: 10),
                child: TextAbout(
                  text: 'V. 0.0.1.3 - 02/03/2020',
                  size: 15,
                  center: true,
                )
              ),

              Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Column(
                    children: <Widget>[
                      LinkIcon(
                        icon: FontAwesomeIcons.github,
                        text: 'GitHub',
                        link: 'https://github.com/lucasemn1',
                      ),
                      LinkIcon(
                        icon: FontAwesomeIcons.linkedin,
                        text: 'Linkedin',
                        link: 'https://www.linkedin.com/in/lucas-emn/'
                      ),
                    ],
                  )),
            ]),
          ),
        ),
      ),
    );
  }
}
