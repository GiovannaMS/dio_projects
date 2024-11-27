class InvalidNameException implements Exception {
  String error() => "Please, inform a name!";

  @override
  String toString() => "InvalidNameException: ${error()}";
}