import 'dart:convert';
import 'dart:io';

import 'package:imc_calculator/models/person.dart';

void main(List<String> arguments) {

  Person person1 = Person();

  print("Informe o nome da pessoa: ");
  person1.setName(stdin.readLineSync(encoding: utf8) ?? "");

  print("Informe o peso da pessoa: ");
  person1.setWeight(double.parse(stdin.readLineSync(encoding: utf8).toString()) ?? 0.0);

  print("Informe a altura da pessoa: ");
  person1.setHeight(double.parse(stdin.readLineSync(encoding: utf8).toString()) ?? 0.0);

  print('IMC: ${person1.getImc()}');
}
