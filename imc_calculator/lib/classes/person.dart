import 'dart:io';
import 'dart:math';

class Person {
  String _name = "";
  double _weight = 0.0;
  double _height = 0.0;
  double _imc = 0.0;

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

  String getName() => _name;

  double getWeight() => _weight;

  double getHeight() => _height;

  double getImc() => calculateImc();

  double calculateImc() {
    try {
      return double.parse((_weight / (_height * _height)).toStringAsFixed(2));
    } catch (e) {
      print(e);
      exit(0);
    }
  }

}