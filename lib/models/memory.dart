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
    //Faz o resultado
    else if ( value == '=' ){
      this.value = this._calculate().toString();
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