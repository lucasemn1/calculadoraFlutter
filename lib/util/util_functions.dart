import 'package:flutter/material.dart';

class Util {
  static bool isNumberInt(num number){
    if( number % 1 == 0 ){
      return true;
    }
    return false;
  }
}