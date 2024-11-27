import 'dart:convert';
import 'dart:io';

class ConsoleUtils {

  static lerString() => stdin.readLineSync(encoding: utf8) ?? "";

  static lerDouble() => double.parse(stdin.readLineSync(encoding: utf8).toString());
}