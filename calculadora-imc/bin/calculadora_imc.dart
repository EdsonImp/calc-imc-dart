
import 'package:calculadora_imc/functions/calcula_imc.dart';
import 'package:calculadora_imc/functions/ler_console.dart';
import 'package:calculadora_imc/model/user.dart';
import 'dart:io';

void main(List<String> arguments) {
String? nome;
double? peso;
double? altura;
String? contato;

print("Calculadora de IMC");

print("Informe seu nome");
nome = lerConsole();

print("Informe o peso");
try {
  peso = double.parse(lerConsole());
print(peso);
} catch (e) {
  print("Digite um valor correro, ex: 60.");
  exit(0);
}



print("Informe a altura");
try {
  altura = double.parse(lerConsole());
print(altura);
} catch (e) {
  print("Digite um valor correro, ex: 60.");
  exit(0);
}
print("Informe o contato");
contato = lerConsole();
var user1 = User(nome, peso, altura, contato);
var user2 =user1.getName();
var imc = calculoImc(user1);
if (imc < 16) {
  
    print("Usuário : $user2 -- IMC= $imc -- Magreza grave");
  } else if (imc < 17) {
    
    print("Usuário : $user2 -- IMC= $imc -- Magreza moderada");
  } else if (imc < 18.5) {
   
    print("Usuário : $user2 -- IMC= $imc -- Magreza leve");
  } else if (imc < 25) {
    
    print("Usuário : $user2 -- IMC= $imc -- Saudável");
  } else if (imc < 30) {
    
    print("Usuário : $user2 -- IMC= $imc -- Sobrepeso");
  } else if (imc < 35) {
    
    print("Usuário : $user2 --  IMC= $imc -- Obesidade -- GRAU I");
  } else if (imc < 40) {
    
    print("Usuário : $user2 -- IMC= $imc -- Obesidade -- GRAU II | Severa");
  } else if (imc >= 40){
    
    print("Usuário : $user2 -- IMC= $imc -- Obesidade -- GRAU III | Mórbida");
  } else if(imc.isNaN){
    print("Valores informados não conferem");
    
  }
}

