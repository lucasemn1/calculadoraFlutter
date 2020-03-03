import 'package:calculadora/models/memory.dart';
import 'package:calculadora/util/colors.dart';
import 'package:flutter/services.dart';

import '../widgets/display.dart';
import '../widgets/keyboard.dart';
import '../widgets/topbar.dart';
import 'package:flutter/material.dart';


class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();
  
  _onPressed(String value){
    setState(() {
      this.memory.applyCommand(value);
    });
  }

  @override
  Widget build(BuildContext context) {

    //Orientação sempre para cima
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp, 
    ]);

    return MaterialApp(
      home: Container(
        color: ThemeColor.DARK_GREY,
        child: Column(
        children: <Widget>[
            Topbar(),
            Display(
              value: memory.getValue(), 
              buffer: memory.buffer, 
              operation: memory.operation
            ),
            Keyboard(this._onPressed),
          ]
        )
      ),
    );
  }
}