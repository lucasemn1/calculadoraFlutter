import 'package:calculadora/screens/information.dart';
import 'package:calculadora/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Display extends StatelessWidget {
  /**
   * Widget responsavel por exibir as informações de valor
   * e criador do aplicativo.
   */

  final String value;
  final String buffer;
  final String operation;

  Display({this.value, this.buffer, this.operation});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          color: Color.fromRGBO(48, 48, 48, 1),
          child: Column(
            children: <Widget>[
              /**
               * Agrupador da informação do criador do aplicativo
               */
              Padding(
                child: Text(
                  '${this.buffer} ${this.operation} ${this.value}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.right,
                ),
                padding: const EdgeInsets.only(top: 30, right: 30),
              ),

              /**
               *  Agrupador de exibição do valor 
               */
              Padding(
                child: AutoSizeText(
                  this.value.toString(),
                  minFontSize: 20,
                  maxFontSize: 80,
                  maxLines: 1,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontFamily: 'Quicksand',
                      decoration: TextDecoration.none,
                      color: Color.fromRGBO(255, 255, 255, 1)),
                ),
                padding: const EdgeInsets.all(25),
              ),
            ],

            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
          )),
    );
  }
}
