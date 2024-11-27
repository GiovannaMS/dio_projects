import 'dart:convert';
import 'dart:io';

import 'package:imc_calculator/classes/person.dart';
import 'package:imc_calculator/exceptions/invalid_name_exception.dart';
import 'package:imc_calculator/exceptions/only_numbers_exception.dart';
import 'package:imc_calculator/util/console_utils.dart';

void main(List<String> arguments) {

  Person person1 = Person();

  try{
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

    print('IMC: ${person1.getImc()}');

  } on FormatException {
    print(OnlyNumbersException().toString());
    exit(0);

  } catch(e) {
    print(e);
    exit(0);
  }
}
