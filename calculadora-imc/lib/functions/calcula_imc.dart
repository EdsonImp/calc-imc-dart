

import 'package:calculadora_imc/model/user.dart';

double calculoImc(User user){
  double? peso = user.getPeso();
  double? altura = user.getAltura();
  double? valor =  peso! / (altura! * altura);
  var imc = valor.toStringAsFixed(2);
  return double.parse(imc);
}