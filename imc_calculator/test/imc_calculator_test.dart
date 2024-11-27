import 'package:imc_calculator/classes/person.dart';
import 'package:test/test.dart';

void main() {
  group('Check IMC calculus', () {
    var valuesToTest = {
      {'height': 1.90, 'weight': 102.3}: 28.34,
      {'height': 1.84, 'weight': 87.5}: 25.84,
      {'height': 1.77, 'weight': 55.9}: 17.84,
      {'height': 1.67, 'weight': 63.2}: 22.66,
      {'height': 1.72, 'weight': 75.5}: 25.52,
    };
    valuesToTest.forEach((values, expected){
      test('Valor: $values Esperado: $expected', () {

        expect(Person().calculateImc(
            double.parse(values['height'].toString()),
            double.parse(values['weight'].toString())
        ), equals(expected));

        }
      );
    });
  });
}
