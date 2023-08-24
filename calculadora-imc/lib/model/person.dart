

abstract class Person{
  String? _name;
  double? _peso;
  double? _altura;

Person(String name, double peso, double altura){
  _name = name;
  _peso = peso;
  _altura = altura;
}

String? getName(){
  return _name;
}
void setName(String name){
  _name = name;

}
double? getPeso(){
  return _peso;
}
void setPeso(double peso){
  _peso = peso;

}
double? getAltura(){
  return _altura;
}
void setAltura(double altura){
  _peso = altura;

}

@override
  String toString() {
    
    return {"Nome ": _name,
             "Peso" : _peso,
            "Altura" : _altura}.toString();
  }
}
