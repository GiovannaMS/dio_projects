import 'package:imc_calculator/classes/person.dart';

void main(List<String> arguments) {

  Person person1 = Person();
  person1.calculateImc();

  Person person2 = Person();
  person2.calculateImc();

  print("Name: ${person1.getName()}, IMC: ${person1.getImc()}, Weight: ${person1.getWeight()}, Height: ${person1.getHeight()}");
  print("Name: ${person2.getName()}, IMC: ${person2.getImc()}, Weight: ${person2.getWeight()}, Height: ${person2.getHeight()}");
}
