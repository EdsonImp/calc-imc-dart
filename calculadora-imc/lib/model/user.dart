import 'package:calculadora_imc/model/person.dart';

class User extends Person{
  String? _contato;


  User(String name, double peso, double altura, String contato ): super(name, peso,altura){
   
_contato = contato;
  }
void setContato(String contato){
   _contato = contato;
}
String getContato(){
  return _contato!;
}
@override
  String toString() {
    
    return {"Nome ": getName(),
             "Peso" : getPeso(),
            "Altura" : getAltura(),
            "Contato" : _contato}.toString();
  }

}