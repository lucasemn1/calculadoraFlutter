import 'package:calculadora/util/util_functions.dart';
import 'package:flutter/material.dart';

class Memory {
  String buffer;
  String value;
  String operation;
  static const OPERATIONS = ['+', 'X', '-', '/', '%'];
  
  Memory({this.value = '0', this.buffer='0', this.operation='+'});

  /**
   * Essa função é responsavel por retornar o valor
   */
  String getValue() {
    return this.value;
  }

  void applyCommand(String value){
    //Zera
    if( value == 'AC'){
      this._allClear();
    }

    else if( value == 'C'){
      this.value = '0';
    }
    
    // Removendo último dígito
    else if( value == 'DEL'){
      this.value = this.value.length > 1 ? 
        this.value = this.value.substring(0, this.value.length - 1): 
        this.value = '0';
    }

    // Tratando valores decimais
    else if( value == ',' ){
      if ( Util.isNumberInt(num.parse(this.value)) && this.value.indexOf('.') == -1 ) {
        this.value += '.';
      }
    }

    //Faz o resultado
    else if ( value == '=' ){
      if ( this.operation == '/' && this.value == '0' ) {
        //Aqui vai ficar o código de validação de um número dividido por 0 
      }

      num calc = this._calculate();

      this.value = Util.isNumberInt(calc) ? 
        this.value = calc.toInt().toString() : 
        this.value = calc.toString();
    }

    //Valor para o buffer
    else if ( OPERATIONS.contains(value) ){
      this._operate(value);
    }
    //Imprime o primeiro valor, substituindo o 0
    else if ( this.value == '0' ) {
      this.value = value;
    }
    //Concatena os números
    else {
      this.value += value;
    }

    this._check();
  }

  /**
   * Função responsável por "zerar" a calculadora
   */
  void _allClear(){
    this.value = '0';
    this.buffer = '0';
    this.operation = '+';
  }

  /**
   * Função responsável por migrar o valor para o buffer e mudar a operação
   */
  void _operate(String operation){
    if(value != '0'){
      this.buffer = this.value;
      this.value = '0';
    }
    this.operation = operation;
  }

  num _calculate(){
    num buffer = num.parse(this.buffer);
    num value = num.parse(this.value);

    if(this.operation == '+'){
      return buffer + value;
    }
    else if(this.operation == '-'){
      return buffer - value;
    }
    else if(this.operation == 'X'){
      return buffer * value;
    }
    else if(this.operation == '/'){
      return buffer / value;
    }
  }

  void _check(){
    print('buffer: ${this.buffer} \n' + 'value: ${this.value} \n' + 'operation: ${this.operation} \n\n');
  }
}