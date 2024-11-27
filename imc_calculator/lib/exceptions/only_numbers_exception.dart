class OnlyNumbersException implements Exception {
  String error() => "Only numbers are allowed for this parameter!";

  @override
  String toString() => "OnlyNumbersException: ${error()}";
}