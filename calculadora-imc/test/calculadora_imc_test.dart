import 'package:calculadora_imc/functions/calcula_imc.dart' as imcTest;
import 'package:calculadora_imc/model/user.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  var userTeste = User("Teste", 80.0, 1.80, "9999");
  test("testar funcao de calculo do imc", (){
 expect(imcTest.calculoImc(userTeste), 24.69);
});
}
