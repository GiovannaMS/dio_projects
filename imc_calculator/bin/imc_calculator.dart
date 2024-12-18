import 'dart:convert';
import 'dart:io';

import 'package:imc_calculator/classes/person.dart';
import 'package:imc_calculator/exceptions/invalid_name_exception.dart';
import 'package:imc_calculator/util/console_utils.dart';

void main(List<String> arguments) {
  Person person1 = Person();

  print("Inform the name: ");
  var name = stdin.readLineSync(encoding: utf8);
  if(name == "") {
    throw InvalidNameException();
  }
  person1.setName(name!);

  print("Inform the weight: ");
  person1.setWeight(ConsoleUtils.lerDouble());

  print("Inform the height: ");
  person1.setHeight(ConsoleUtils.lerDouble());

  person1.calculateImc(person1.getHeight(), person1.getWeight());

  print("Name: ${person1.getName()}, IMC: ${person1.getImc()}, Weight: ${person1.getWeight()}, Height: ${person1.getHeight()}");
}
