import 'dart:convert';
import 'dart:io';

import '../exceptions/invalid_name_exception.dart';
import '../exceptions/only_numbers_exception.dart';
import '../util/console_utils.dart';

class Person {
  String _name = "";
  double _weight = 0.0;
  double _height = 0.0;
  late final double _imc;

  Person();

  void setName(String name){
    _name = name;
  }

  void setWeight(double weight){
    _weight = weight;
  }

  void setHeight(double height){
    _height = height;
  }

  void setImc(double imc){
    _imc = imc;
  }

  String getName() => _name;

  double getWeight() => _weight;

  double getHeight() => _height;

  double getImc() => _imc;

  double calculateImc(double height, double weight) {

    try{
      setImc(double.parse((weight / (height * height)).toStringAsFixed(2)));
      return getImc();

    } on FormatException {
      print(OnlyNumbersException().toString());
      exit(0);

    } catch(e) {
      print(e);
      exit(0);
    }
  }

}