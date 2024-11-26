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

  double getImc() => _imc = _imc = _weight / (_height * _height);

}